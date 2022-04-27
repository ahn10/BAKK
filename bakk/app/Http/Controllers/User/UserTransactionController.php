<?php

namespace App\Http\Controllers\User;

use App\Exports\TransactionInvoiceExport;
use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;
use App\Models\Transaction;

class UserTransactionController extends Controller
{
    public function index(Request $request)
    {
        $transactions = Transaction::whereRaw(1)
            ->where('tst_user_id', \Auth::id());

        if ($request->id)
		{
			$id = str_replace(['dh','DH'],'',$request->id);
			$transactions->where('id', $id);
		}

        if ($email = $request->email) {
            $transactions->where('tst_email', 'like', '%' . $email . '%');
        }

        if ($type = $request->type) {
            if ($type == 1) {
                $transactions->where('tst_user_id', '<>', 0);
            } else {
                $transactions->where('tst_user_id', 0);
            }
        }

        if ($status = $request->status) {
            $transactions->where('tst_status', $status);
        }

        $transactions = $transactions->orderByDesc('id')
            ->paginate(10);

        // if ($request->export) {
        //     return \Excel::download(new TransactionExport($transactions), 'order.xlsx');
        // }

        $viewData = [
            'transactions' => $transactions,
            'query'        => $request->query()
        ];

        return view('user.transaction', $viewData);
    }

    public function viewOrder($id)
    {
        $transaction = Transaction::with('user:id,name')->where([
            'id'          => $id,
            'tst_user_id' => \Auth::id()
        ])->first();
        if (!$transaction) return redirect()->to('/');

        $viewData = [
            'transaction' => $transaction,
            'title_page'  => "Order detail #". $transaction->id,
            'orders'      => $this->getOrderByTransactionID($id)
        ];
        return view('user.order', $viewData);
    }

    public function getTrackingTransaction($id)
    {
        $transaction = Transaction::with('user:id,name')->where([
            'id'          => $id,
            'tst_user_id' => \Auth::id()
        ])->first();
        if (!$transaction || $transaction->tst_status == -1)
            return redirect()->to('/');

        $viewData = [
            'transaction' => $transaction,
            'orders'      => $this->getOrderByTransactionID($id),
            'title_page'  => "Order Tracking #". $transaction->id,
        ];
        return view('user.tracking_order', $viewData);
    }

    public function cancelTransaction($id)
    {
        $transaction = Transaction::find($id);
        if ($transaction)
        {
            $transaction->tst_status = -1;
            $transaction->save();
        }

        return redirect()->back();
    }

    protected function getOrderByTransactionID($transactionID)
    {
        return Order::with('product:id,pro_name,pro_slug,pro_avatar')
            ->where('od_transaction_id', $transactionID)
            ->get();
    }

	/**
	 * @param $id
	 * export invoice  user
	 */
    public function exportInvoiceTransaction($id)
	{
		$transaction = Transaction::with('admin:id,name')->where('id', $id)->first();
		$orders = Order::with('product:id,pro_name,pro_slug,pro_avatar')
			->where('od_transaction_id', $id)
			->get();

		$html =  view('user.include._inc_invoice_transaction',compact('transaction','orders'))->render();
		return response()->json(['html' => $html]);

//		return \Excel::download(new TransactionInvoiceExport($transaction), 'invoice.xlsx');
	}
}
