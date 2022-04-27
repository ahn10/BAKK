<?php
/**
 * Created by PhpStorm .
 * User: bakk .
 * Date: 2/14/22 .
 * Time: 11:59 PM .
 */

namespace App\Services;

use PayPal\Rest\ApiContext;
use PayPal\Auth\OAuthTokenCredential;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Amount;
use PayPal\Api\Transaction;
use PayPal\Api\RedirectUrls;
use PayPal\Api\Payment;
use PayPal\Api\Payer;
use PayPal\Api\PaymentExecution;
use Illuminate\Http\Request;

class PayPalService
{
    // Contain context of API
    private $apiContext;
    // Item List
    private $itemList;
    // Currency
    private $paymentCurrency;
    // Total
    private $totalAmount;
    // path payment successful
    private $returnUrl;
    // path cancel
    private $cancelUrl;


    public function __construct()
    {
        // read config file
        $paypalConfigs = config('paypal');

        // Initial
        $this->apiContext = new ApiContext(
            new OAuthTokenCredential(
                $paypalConfigs['client_id'],
                $paypalConfigs['secret']
            )
        );

        // Set default currency
        $this->paymentCurrency = "USD";

        // Initial total amount
        $this->totalAmount = 0;
    }

    /**
     * Set payment currency
     *
     * @param string $currency String name of currency
     * @return self
     */
    public function setCurrency($currency)
    {
        $this->paymentCurrency = $currency;

        return $this;
    }

    /**
     * Get current payment currency
     *
     * @return string Current payment currency
     */
    public function getCurrency()
    {
        return $this->paymentCurrency;
    }

    /**
     * Add item to list
     *
     * @param array $itemData Array item data
     * @return self
     */
    public function setItem($itemData)
    {
        // Check item, and add many items at a time
        
        if (count($itemData) === count($itemData, COUNT_RECURSIVE)) {
            $itemData = [$itemData];
        }

        // Item list
        foreach ($itemData as $data) {
            // new item
            $item = new Item();

            // Set name of item
            $item->setName($data['name'])
                ->setCurrency($this->paymentCurrency) // currency
                ->setSku($data['sku']) // ID item
                ->setQuantity($data['quantity']) // quantity
                ->setPrice($data['price']); // Price
            // add item to list
            $this->itemList[] = $item;
            // total
            $this->totalAmount += $data['price'] * $data['quantity'];
        }

        return $this;
    }

    /**
     * Get list item
     *
     * @return array List item
     */
    public function getItemList()
    {
        return $this->itemList;
    }

    /**
     * Get total amount
     *
     * @return mixed Total amount
     */
    public function getTotalAmount()
    {
        return $this->totalAmount;
    }

    /**
     * Set return URL
     *
     * @param string $url Return URL for payment process complete
     * @return self
     */
    public function setReturnUrl($url)
    {
        $this->returnUrl = $url;

        return $this;
    }

    /**
     * Get return URL
     *
     * @return string Return URL
     */
    public function getReturnUrl()
    {
        return $this->returnUrl;
    }

    /**
     * Set cancel URL
     *
     * @param $url Cancel URL for payment
     * @return self
     */
    public function setCancelUrl($url)
    {
        $this->cancelUrl = $url;

        return $this;
    }

    /**
     * Get cancel URL of payment
     *
     * @return string Cancel URL
     */
    public function getCancelUrl()
    {
        return $this->cancelUrl;
    }

    /**
     * Create payment
     *
     * @param string $transactionDescription Description for transaction
     * @return mixed Paypal checkout URL or false
     */
    public function createPayment($transactionDescription)
    {
        $checkoutUrl = false;

        // select type of payment.
        $payer = new Payer();
        $payer->setPaymentMethod('paypal');

        // item list
        $itemList = new ItemList();
        $itemList->setItems($this->itemList);

        // Total và currency will be used to have payment.
        
        $amount = new Amount();
        $amount->setCurrency($this->paymentCurrency)
            ->setTotal($this->totalAmount);

        // Transaction
        $transaction = new Transaction();
        $transaction->setAmount($amount)
            ->setItemList($itemList)
            ->setDescription($transactionDescription);

        // path payment successful.
        $redirectUrls = new RedirectUrls();

        // Check exist path when user cancel payment or not
        // If not, default we will use $redirectUrl
        if (is_null($this->cancelUrl)) {
            $this->cancelUrl = $this->returnUrl;
        }

        $redirectUrls->setReturnUrl($this->returnUrl)
            ->setCancelUrl($this->cancelUrl);

        // New payment
        $payment = new Payment();
        $payment->setIntent('Sale')
            ->setPayer($payer)
            ->setRedirectUrls($redirectUrls)
            ->setTransactions([$transaction]);

        // create payment
        try {
            $payment->create($this->apiContext);
        } catch (\PayPal\Exception\PPConnectionException $paypalException) {
            throw new \Exception($paypalException->getMessage());
        }

        // if create a payment successful. We will receive a path list,
        // which related the payment on Paypal
       
        foreach ($payment->getLinks() as $link) {
            // Get link that have rel
            // approval_url added $checkoutUrl
            // and redirect to the user
            if ($link->getRel() == 'approval_url') {
                $checkoutUrl = $link->getHref();
                // Save payment ID in session to check
                // payment in other function
                session(['paypal_payment_id' => $payment->getId()]);

                break;
            }
        }

        // Return url payment to redirect 
        return $checkoutUrl;
    }

    /**
     * Get payment status
     *
     * @return mixed Object payment details or false
     */
    public function getPaymentStatus()
    {
        // Create request to get query on
        // URL return to PayPal
        $request = Request::all();

        // Get Payment ID in session
        $paymentId = session('paypal_payment_id');
        // Delete payment ID saved in session
        session()->forget('paypal_payment_id');

        // Check URL send back to PayPal contain
        // query of the payment successful or not
        
        if (empty($request['PayerID']) || empty($request['token'])) {
            return false;
        }

        // Create payment from exist Payment ID 
        $payment = Payment::get($paymentId, $this->apiContext);

        // Execute payment and get payment detail
        $paymentExecution = new PaymentExecution();
        $paymentExecution->setPayerId($request['PayerID']);

        $paymentStatus = $payment->execute($paymentExecution, $this->apiContext);

        return $paymentStatus;
    }

    /**
     * Get payment list
     *
     * @param int $limit Limit number payment
     * @param int $offset Start index payment
     * @return mixed Object payment list
     */
    public function getPaymentList($limit = 10, $offset = 0)
    {
        $params = [
            'count' => $limit,
            'start_index' => $offset
        ];

        try {
            $payments = Payment::all($params, $this->apiContext);
        } catch (\PayPal\Exception\PPConnectionException $paypalException) {
            throw new \Exception($paypalException->getMessage());
        }

        return $payments;
    }

    /**
     * Get payment details
     *
     * @param string $paymentId PayPal payment Id
     * @return mixed Object payment details
     */
    public function getPaymentDetails($paymentId)
    {
        try {
            $paymentDetails = Payment::get($paymentId, $this->apiContext);
        } catch (\PayPal\Exception\PPConnectionException $paypalException) {
            throw new \Exception($paypalException->getMessage());
        }

        return $paymentDetails;
    }
}
