<div class="wrapper" id="wrapper" style="max-width: 780px;margin: 20px auto;padding: 5px 10px;">
	<div class="" style="display: flex;justify-content: space-between;">
        <a href="">
            <img style="background: #2196f3 !important;width: 217px;" src="{{  asset('images/logo.png') }}" alt="BAKK Gaming">
        </a>
        <div style="text-align: right;width: 50%">
            <p style="margin: 0"><b>BAKK.com</b></p>
            <p style="margin: 0">Address: <b>1900 Commerce St, Tacoma, WA 98402 </b> </p>
            <p style="margin: 0">Phone: <b>253123456</b></p>
        </div>
    </div>
    <h2 style="    font-size: 34px;
    font-weight: bold;
    text-transform: uppercase;
    color: #666;
    padding: 30px 0;">Invoice</h2>
    <p style="text-align: left;">Full name: <b>{{ $transaction->tst_name }}</b></p>
    <p style="text-align: left;">Product <b>{{ $transaction->tst_note }}</b></p>
	<div class="table-responsive" style="margin-top: 50px;">
		<div class="table table-striped">
			<table style="width: 100%;border: 1px solid #dedede;">
				<tr style="border-bottom: 1px solid #dedede">
					<th style="text-align: center">No.</th>
					<th style="text-align: center">Name</th>
					<th style="text-align: center">Price</th>
					<th style="text-align: center">Quantity</th>
					<th style="text-align: center">Total</th>
				</tr>
				@foreach($orders as $key => $order)
					<tr>
						<td style="text-align: center">{{ ($key + 1) }}</td>
						<td style="text-align: center">{{ $order->product->pro_name ?? "[N\A]"  }}</td>
						<td style="text-align: center">${{ number_format($order->od_price,2,'.',',') }}</td>
						<td style="text-align: center">{{ $order->od_qty }}</td>
						<td style="text-align: center">{{ number_format($order->od_price * $order->od_qty,2,'.',',') }}</td>
					</tr>
				@endforeach
			</table>
		</div>
	</div>
	<p style="margin:20px 0;text-align: right">Order Total: <b>${{ number_format($transaction->tst_total_money,2,'.',',') }}</b></p>
	<div style="">
		<div class="col-5" style="padding-bottom: 100px; width: 50%;float: left;text-align: center">
			<h3 style="margin:0">Customer</h3>
			<p style="margin: 0"><i>(Sign and print your name)</i></p>
			<span style="margin-top: 50px;display: block"><i>{{ $transaction->tst_name }}</i></span>
		</div>
		<div class="col-5" style="padding-bottom: 100px; width: 50%;float: left;text-align: center">
			<h3 style="margin:0">Seller</h3>
			<p style="margin: 0"><i>(Sign and print your name)</i></p>
			<span style="margin-top: 50px;display: block"><i>BAKK Gaming</i></span>
		</div>
		<div style="clear: both"></div>
	</div>
</div>