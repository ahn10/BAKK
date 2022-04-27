@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title">Edit Profile</div>
        <form action="" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="">Full Name</label>
                <input type="text" name="name" class="form-control" value="{{ Auth::user()->name }}" placeholder="">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="email" value="{{ Auth::user()->email }}" placeholder="Enter email">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="">Phone</label>
                <input type="number" name="phone" class="form-control" value="{{ Auth::user()->phone }}" placeholder="Enter phone">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="">Address</label>
                <input type="text" name="address" class="form-control" value="{{ Auth::user()->address }}" placeholder="Address">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="from-group">
                <div class="upload-btn-wrapper">
                    <button class="btn-upload">Upload Image</button>
                    <input type="file" name="avatar" />
                </div>
            </div>

            <button type="submit" class="btn btn-blue btn-md">Save</button>
        </form>

    </section>
@stop
