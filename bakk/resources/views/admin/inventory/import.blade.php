@extends('layouts.app_master_admin')
@section('content')
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Check Goods Receipt</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="">  Goods receipt </a></li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-title">
					<form class="form-inline">

                        <a href="{{  route('admin.warehousing.add') }}">Add new</a>
					</form>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
							<tr>
								<th>Date</th>
								<th>Quantity</th>
								<th>Total</th>
								<th>#</th>
							</tr>

							</tbody>
							@if (isset($warehouses))
								@foreach($warehouses as $item)
									<tr>
										<td>{{ $item->created_at }}</td>
										<td>{{ $item->w_qty }}</td>
										<td>${{ number_format($item->w_price,2,'.',',') }} </td>
                                        <td>
                                            <a href="{{ route('admin.warehousing.update', $item->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Edit</a>
                                            <a href="{{  route('admin.warehousing.delete', $item->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
                                        </td>
									</tr>
								@endforeach
							@endif
						</table>
					</div>
				</div>
			</div>
			<!-- /.box -->
		</div>
	</section>
	<!-- /.content -->
@stop
