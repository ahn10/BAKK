<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\ResetsPasswords;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;
use App\Mail\ResetPasswordEmail;
use App\Http\Requests\UserRequestNewPassword;

class ResetPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset requests
    | and uses a simple trait to include this behavior. You're free to
    | explore this trait and override any methods you wish to tweak.
    |
    */

    public function getEmailReset()
    {
        return view('auth.passwords.email');
    }

    public function checkEmailResetPassword(Request $request)
    {
        $account = \DB::table('users')->where('email', $request->email)->first();
        if ($account) {
            // send email
            $token = Hash::make($account->email.$account->id);
            \DB::table('password_resets')
            ->insert([
                'email' => $account->email,
                'token' => $token,
                'created_at' => Carbon::now()
            ]);

            $link = route('get.new_password',['email' => $account->email,'_token' => $token]);

            Mail::to($account->email)->send(new ResetPasswordEmail($link));
			\Session::flash('toastr', [
				'type'    => 'success',
				'message' => 'We sent you an email with a link to reset your password (it might take a couple of minutes). If you still can not find it, check your junk mail!'
			]);

            return redirect()->to('/');
        }

        return redirect()->back();
    }

    public function newPassword(Request $request)
    {
        $token = $request->_token;

        //Check token available
        $checkToken = \DB::table('password_resets')
            ->where('token',$token)
            ->first();

        if (!$checkToken)  return redirect()->to('/');

        // Check time to create token over 3 mins or not
        $now = Carbon::now();
        if ($now->diffInMinutes($checkToken->created_at) > 3) {
            \DB::table('password_resets')->where('email', $request->email)->delete();   
            return redirect()->to('/');
        }

        return view('auth.passwords.reset'); 
    }

    public function savePassword(UserRequestNewPassword $request)
    {
        $password = $request->password;

        $data['password']   =  Hash::make($password);
        $email = $request->email;

        if (!$email) return redirect()->to('/');

        \DB::table('users')->where('email', $email)
            ->update($data);

        \DB::table('password_resets')->where('email', $email)->delete();

		\Session::flash('toastr', [
			'type'    => 'success',
			'message' => 'Updated successfully. Please sign in'
		]);

        return redirect()->route('get.login');
    }
}
