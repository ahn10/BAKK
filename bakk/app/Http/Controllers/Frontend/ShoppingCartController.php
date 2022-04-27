<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Transaction;
use App\Services\ShoppingCartService\PayManager;
use Illuminate\Http\Request;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Log;
use App\Services\PayPalService as PayPalSvc;

class ShoppingCartController extends Controller
{
    private $vnp_TmnCode = "70ZQD6UU"; //Code of webiste VNPAY
    private $vnp_HashSecret = "OCIRVOZCAGKZXMCSIXRDJIPCFQVCPHTK"; //secret string
    private $vnp_Url = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
    private $vnp_Returnurl = 'http://bakk.local:8888/shopping/hook';
    protected $idTransaction = 0;

    private $paypalSvc;

    public function __construct(PayPalSvc $paypalSvc)
    {
        $this->paypalSvc = $paypalSvc;
    }

    public function index()
    {
        $shopping = \Cart::content();
        $viewData = [
            'title_page' => 'Item List',
            'shopping'   => $shopping
        ];
        return view('frontend.pages.shopping.index', $viewData);
    }

    /**
     * Add item
     * */
    public function add($id)
    {
        $product = Product::find($id);

        //1. check item exist or not
        if (!$product) return redirect()->to('/');

        // 2. Check quantity
        if ($product->pro_number < 1) {
            //4. Notification
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Quantity is not enough'
            ]);

            return redirect()->back();
        }

        $check = $this->searchItemByIdCart($product->id);
        if (($check + 1) > $product->pro_number) {
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Quantity is not enough'
            ]);

            return redirect()->back();
        }

        if (($check + 1) > 10) {
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Only buy maximum of 10 items'
            ]);

            return redirect()->back();
        }

        // 3. add item to cart
        \Cart::add([
            'id'      => $product->id,
            'name'    => $product->pro_name,
            'qty'     => 1,
            'price'   => number_price($product->pro_price, $product->pro_sale),
            'weight'  => '1',
            'options' => [
                'sale'      => $product->pro_sale,
                'price_old' => $product->pro_price,
                'image'     => $product->pro_avatar
            ]
        ]);

        //4. Notification
        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Product added to cart!'
        ]);

        return redirect()->back();
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * Payment
     */
    public function postPay(Request $request)
    {
        $data = $request->except("_token");
        if (!\Auth::user()->id) {
            //4. Notification
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Sign in to use this function'
            ]);

            return redirect()->back();
        }
        $data['tst_user_id']     = \Auth::user()->id;
        $data['tst_user_id']     = \Auth::user()->id;
        $data['tst_total_money'] = str_replace(',', '', \Cart::subtotal(0));
        $data['created_at']      = Carbon::now();

        // Get VAT
        $percentVat              = env('PERCENT_VAT', 0);
        $priceVat                = round((($data['tst_total_money'] * $percentVat) / 100), 0);
        $data['tst_total_money'] += $priceVat;

        // Get info order
        $shopping                  = \Cart::content();
        $data['options']['orders'] = $shopping;

        try {

            $data                   = [
                [
                    'name'     => 'Order',
                    'quantity' => 1,
                    'price'    => $data['tst_total_money'],
                    'sku'      => '1'
                ]
            ];
            $transactionDescription = "Order Info";

            $paypalCheckoutUrl = $this->paypalSvc
                ->setReturnUrl(route('get.shopping.callback'))
                ->setItem($data)
                ->createPayment($transactionDescription);

            if ($paypalCheckoutUrl) {
                \Session::flash('toastr', [
                    'type'    => 'success',
                    'message' => 'Payment Successful'
                ]);
                return redirect($paypalCheckoutUrl);
            } else {
                dd(['Error']);
            }

        } catch (\Exception $exception) {
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Something went wrong'
            ]);
            Log::error('--------------------- pay: ' . json_encode($exception->getMessage()));
        }


        return redirect()->to('/');
    }

    public function hookCallback(Request $request)
    {
        $data = $request->all();
        if (isset($data['token'])) {
            $data['tst_user_id']     = \Auth::user()->id;
            $data['tst_total_money'] = str_replace(',', '', \Cart::subtotal(0));
            $data['created_at']      = Carbon::now();
            $data['tst_name'] = \Auth::user()->name;
            $data['tst_email'] = \Auth::user()->email;
            $data['tst_phone'] = \Auth::user()->phone;
            $data['tst_address'] = \Auth::user()->address;
            

            // Get VAT
            $percentVat              = env('PERCENT_VAT', 0);
            $priceVat                = round((($data['tst_total_money'] * $percentVat) / 100), 0);
            $data['tst_total_money'] += $priceVat;

            // Get info order
            $shopping = \Cart::content();
            $data['options']['orders'] = $shopping;

            try {
                new PayManager($data, $shopping, []);
                \Cart::destroy();
                \Session::flash('toastr', [
                    'type'    => 'success',
                    'message' => 'Payment Successful'
                ]);
            } catch (\Exception $exception) {

                \Session::flash('toastr', [
                    'type'    => 'error',
                    'message' => 'Something went wrong'
                ]);
                Log::error("[Errors pay shopping cart]" . $exception->getMessage());
            }

        }


        return redirect()->to('/');
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {

            //1.get para
            $qty       = $request->qty ?? 1;
            $idProduct = $request->idProduct;
            $product   = Product::find($idProduct);

            //2. check exist item
            if (!$product) return response(['messages' => 'No Item need to update']);

            //3. Check quantity
            if ($product->pro_number < $qty) {
                return response([
                    'messages' => 'The quantity is not enough',
                    'error'    => true
                ]);
            }

            //4. Update
            \Cart::update($id, $qty);

            return response([
                'messages'   => 'Updated Successfully',
                'totalMoney' => \Cart::subtotal(0),
                'totalItem'  => number_format(number_price($product->pro_price, $product->pro_sale) * $qty, 2, '.','.')
            ]);
        }
    }


    protected function searchItemByIdCart($productID)
    {
        $shopping = \Cart::content();

        foreach ($shopping as $item) {
            if ($item->id == $productID)
                return $item->qty;
        }

        return 0;
    }

    /**
     *  Remove item
     * */
    public function delete(Request $request, $rowId)
    {
        if ($request->ajax()) {
            \Cart::remove($rowId);
            return response([
                'totalMoney' => \Cart::subtotal(0),
                'type'       => 'success',
                'messages'   => 'Item has been removed'
            ]);
        }
    }

    public function getDataTransaction($data)
    {
        return [
            "tst_name"        => Arr::get($data, 'tst_name'),
            "tst_phone"       => Arr::get($data, 'tst_phone'),
            "tst_address"     => Arr::get($data, 'tst_address'),
            "tst_email"       => Arr::get($data, 'tst_email'),
            "tst_note"        => Arr::get($data, 'tst_note'),
            "tst_user_id"     => Arr::get($data, 'tst_user_id'),
            "tst_total_money" => Arr::get($data, 'tst_total_money'),
            "tst_type"        => Arr::get($data, 'tst_type'),
            "created_at"      => Carbon::now()
        ];
    }

    /**
     * @param $productId
     * Increase quantity
     */
    public function incrementPayProduct($productId)
    {
        \DB::table('products')
            ->where('id', $productId)
            ->increment("pro_pay");
    }

    /**
     * @param $orders
     * @param $transactionID
     * Save info order
     */
    public function syncOrder($orders, $transactionID)
    {
        if ($orders) {
            foreach ($orders as $key => $item) {
                $order               = $this->getDataOrder($item, $transactionID);
                $order['created_at'] = Carbon::now();
                //1. Save info order
                Order::insert($order);

                //2. incrementPayProduct
                $this->incrementPayProduct($item->id);
            }
        }
    }

    /**
     * @param $order
     * @param $transactionID
     * @return array
     */
    public function getDataOrder($order, $transactionID)
    {
        return [
            'od_transaction_id' => $transactionID,
            'od_product_id'     => $order->id,
            'od_sale'           => $order->options->sale,
            'od_qty'            => $order->qty,
            'od_price'          => $order->price
        ];
    }
}
