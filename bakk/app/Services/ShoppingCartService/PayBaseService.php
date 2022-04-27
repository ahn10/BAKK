<?php


namespace App\Services\ShoppingCartService;


use App\Models\Order;
use Carbon\Carbon;
use Illuminate\Support\Arr;

class PayBaseService
{
    /**
     * @param $data
     * @return array
     */
    public function getDataTransaction($data)
    {
        return  [
            "tst_name"        => Arr::get($data,'tst_name'),
            "tst_phone"       => Arr::get($data,'tst_phone'),
            "tst_address"     => Arr::get($data,'tst_address'),
            "tst_email"       => Arr::get($data,'tst_email'),
            "tst_note"        => Arr::get($data,'tst_note'),
            "tst_user_id"     => Arr::get($data,'tst_user_id'),
            "tst_total_money" => Arr::get($data,'tst_total_money'),
            "created_at"      => Carbon::now()
        ];
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

    /**
     * @param $productId
     * incrementPayProduct
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
     * Save order detail
     */
    public function syncOrder($orders, $transactionID)
    {
        if($orders) {
            foreach ($orders as $key => $item) {
                $order = $this->getDataOrder($item, $transactionID);
                $order['created_at'] = Carbon::now();
                //1. Save order detail
                Order::insert($order);

                //2. incrementPayProduct
                $this->incrementPayProduct($item->id);
            }
        }
    }
}
