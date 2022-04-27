<table class="table">
	<tbody>
	<tr>
		<th style="width: 100px"></th>
		<th>Status</th>
		<th>Date</th>
		<th>Total</th>
		<th>Statement balance</th>
		<th>Operation </th>
	</tr>
	@if (isset($transactions))
		@foreach($transactions as $transaction)
			<tr>
				<td>DH{{ $transaction->id }}</td>
				<td>
					<span class="label label-{{ $transaction->getStatus($transaction->tst_status)['class'] }}">
						{{ $transaction->getStatus($transaction->tst_status)['name'] }}
					</span>
				</td>
				<td>{{  $transaction->created_at }}</td>
				<td>${{ number_format($transaction->tst_total_money,2,'.',',') }} </td>
				<td>${{ number_format($transaction->tst_total_money,2,'.',',') }} </td>
				<td>
					<a href="{{ route('admin.action.transaction',['success', $transaction->id]) }}" class="btn btn-success btn-xs js-success-transaction"><i class="fa fa-calculator"></i> Pay the Order</a>
				</td>
			</tr>
		@endforeach
	@endif
	</tbody>
</table>