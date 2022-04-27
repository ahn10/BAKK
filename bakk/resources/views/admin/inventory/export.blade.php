@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Goods Issue</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="">  Goods Issue </a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
{{--                <div class="box-header">--}}
{{--                    <div class="pull-left">--}}
{{--                        <form action="" class="form-inline">--}}
{{--                            <input type="text" class="form-control" autocomplete="off" name="time" placeholder="Time ..." value="{{ Request::get('time') }}">--}}
{{--                            <button type="submit" class="btn btn-info"><i class="fa fa-search"></i> Search</button>--}}
{{--                        </form>--}}
{{--                    </div>--}}
{{--                </div>--}}
                @php $sum = 0 ; @endphp
                <div class="box-body">
                    <div class="col-md-12">
                        <table class="table">
                            <tbody>
                            <tr>
                                <th>ID</th>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th>Buy Date</th>
                            </tr>

                            </tbody>
                            @if (isset($inventoryExport))
                                @foreach($inventoryExport as $item)
                                    {{--									{{ dd($item) }}--}}
                                    <tr>
                                        <td>{{ $item->od_product_id }}</td>
                                        <td><a href="">{{ $item->product->pro_name ?? "[N\A]" }}</a></td>
                                        <td>{{ $item->od_qty }}</td>
                                        <td>${{ number_format($item->od_price,2,'.',',') }} </td>
                                        <td>{{ $item->created_at  }}</td>
                                    </tr>
                                    @php
                                        $sum += $item->od_price;
                                    @endphp
                                @endforeach
                            @endif
                        </table>
                    </div>
                    <p> Total: <b>${{ number_format($sum,2,'.',',') }} </b></p>
                </div>
            </div>
            <!-- /.box -->
            <div class="box-footer">
                {!! $inventoryExport->appends($query ?? [])->links() !!}
            </div>
        </div>
    </section>
    <!-- /.content -->
@stop

@section('script')
    <script type="text/javascript" src="{{ asset('admin/bower_components/daterangepicker/moment.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('admin/bower_components/daterangepicker/daterangepicker.js') }}"></script>
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/bower_components/daterangepicker/daterangepicker.css') }}" />
    <script type="text/javascript">
        $(function(){
            $('input[name="time"]').daterangepicker({
                autoUpdateInput: false,
                locale: {
                    cancelLabel: 'Clear'
                } ,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '7 days ago': [moment().subtract(6, 'days'), moment()],
                    '30 days ago': [moment().subtract(29, 'days'), moment()],
                    'This month': [moment().startOf('month'), moment().endOf('month')],
                    'Last month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                }
            });

            $('input[name="time"]').on('apply.daterangepicker', function(ev, picker) {
                $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
            });

            $('input[name="time"]').on('cancel.daterangepicker', function(ev, picker) {
                $(this).val('');
            });
        })
    </script>
@stop
