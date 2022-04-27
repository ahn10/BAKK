@extends('layouts.app_master_user')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/user.min.css') }}">
    <style>


    </style>
@stop
@section('content')
    <section>
        <div class="title">History Transaction</div>
        <div class="content">
            <table class="table">
                <thead>
                    <tr>
                        <th >#</th>
                        <th >Transaction Code</th>
                        <th style="width: 15%">Balance</th>
                        <th class="text-center">Total</th>
                        <th class="text-center">Date</th>
                        <th class="text-center">Status</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($payHistories as $pay)
                        <tr>
                            <th scope="row">#{{ $pay->id }}</th>
                            <th>{{ $pay->ph_code }}</th>
                            @if ($pay->ph_credit)
                                <th class="text-center">
                                    <span class="manage-money">
                                        <i class="fa fa-long-arrow-up"></i>{{ number_format($pay->ph_credit,2,'.',',') }} <sup>$</sup>
                                    </span>
                                </th>
                            @else
                                <th class="text-center">
                                    <span class="manage-money">
                                        <i class="fa fa-long-arrow-down"></i>{{ number_format($pay->ph_debit,2,'.',',') }} <sup>$</sup>
                                    </span>
                                </th>
                            @endif
                            <th>
                                ${{ number_format($pay->ph_balance,2,'.',',') }} 
                            </th>
                            <th>{{  $pay->created_at }}</th>
                            <th>
                                <span><i class="fa fa-circle"></i> Done</span>
                            </th>
                        </tr>
                    @endforeach
                </tbody>
            </table>

        </div>
    </section>
@stop
