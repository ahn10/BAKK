@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Managing Payment</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{  route('admin.system_pay_in.index') }}"> User</a></li>
            <li class="active"> Create </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST">
                        @csrf
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('pi_user_id') ? 'has-error' : '' }}">
                                <label for="name">User Pay In <span class="text-danger">(*)</span></label>
                                <select name="pi_user_id" id="" class="form-control js-select2">
                                    @foreach($users as $user)
                                        <option value="{{ $user->id }}">#{{ $user->id }} - {{ $user->email }} - {{ $user->phone }}</option>
                                    @endforeach
                                </select>
                                @if ($errors->first('pi_user_id'))
                                    <span class="text-danger">{{ $errors->first('pi_user_id') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('pi_provider') ? 'has-error' : '' }}">
                                <label for="name">Method <span class="text-danger">(*)</span></label>
                                <select name="pi_provider" id="" class="form-control">
                                    <option value="1">Transfer</option>
                                    <option value="2">Momo</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('pi_money') ? 'has-error' : '' }}">
                                <label for="name">Balance <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" name="pi_money"  placeholder="">
                                @if ($errors->first('pi_money'))
                                    <span class="text-danger">{{ $errors->first('pi_money') }}</span>
                                @endif
                            </div>
                        </div>

{{--                        <div class="col-sm-8">--}}
{{--                            <div class="form-group {{ $errors->first('mn_name') ? 'has-error' : '' }}">--}}
{{--                                <label for="name">Trans ID <span class="text-danger">(*)</span></label>--}}
{{--                                <input type="text" class="form-control" name="mn_name"  placeholder="Name ...">--}}
{{--                                @if ($errors->first('mn_name'))--}}
{{--                                    <span class="text-danger">{{ $errors->first('mn_name') }}</span>--}}
{{--                                @endif--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div class="col-sm-8">--}}
{{--                            <div class="form-group {{ $errors->first('mn_name') ? 'has-error' : '' }}">--}}
{{--                                <label for="name">Account Number <span class="text-danger">(*)</span></label>--}}
{{--                                <input type="text" class="form-control" name="mn_name"  placeholder="Name ...">--}}
{{--                                @if ($errors->first('mn_name'))--}}
{{--                                    <span class="text-danger">{{ $errors->first('mn_name') }}</span>--}}
{{--                                @endif--}}
{{--                            </div>--}}
{{--                        </div>--}}
                        <div class="col-sm-12">
                            <div class="box-footer text-center">
                                <a href="{{ route('admin.system_pay_in.index') }}" class="btn btn-danger">
                                    Back <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success">Save <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
@stop
