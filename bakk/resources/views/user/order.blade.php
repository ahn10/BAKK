@extends('layouts.app_master_user')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/user.min.css') }}">
@stop
@section('content')
    <section>
        <div class="title">Order Detail# {{ $transaction->id }}</div>
        <div class="row">
            <div class="col-4">
                <h5>Shipping Address</h5>
                <div class="box">
                    <p><b>{{ $transaction->user->name ?? "[N\A]" }}</b></p>
                    <p>Address: <span>{{ $transaction->tst_address }}</span></p>
                </div>
            </div>
            <div class="col-4">
                <h5>Shipping method</h5>
                <div class="box">
                    <p>Shipping fee: <span>$0</span></p>
                </div>
            </div>
            <div class="col-4">
                <h5>Payment methods</h5>
                <div class="box">
                    <p>Method: <b>PayPal</b></p>
                    <p>Total: <b>${{ number_format($transaction->tst_total_money,2,'.',',') }}</b></p>
                </div>
            </div>
        </div>
        <div class="content">
            <h4>Items Ordered</h4>
            @include('user.include._inc_list_product_order')
            <div>
                <a href="{{ route('get.user.transaction') }}" class="btn btn-light"><i class="fa fa-angle-double-left"></i>Back to Orders</a>
                @if ($transaction->tst_status != -1)
                    <a href="{{ route('get.user.tracking_order', $transaction->id) }}" class="btn btn-primary js-">Order Tracking<i class="fa fa-angle-double-right"></i></a>
                @endif
            </div>
        </div>
    </section>
@stop
