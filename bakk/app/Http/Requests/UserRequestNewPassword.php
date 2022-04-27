<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequestNewPassword extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'password'          => 'required',
            'password_confirm'  => 'required|same:password'
        ];
    }

    public function messages()
    {
        return [
            'password_confirm.required'      => 'Required fields cannot be blank',
            'password.required'              => 'Required fields cannot be blank',
            'password_confirm.same'          => 'Password did not match'
        ];
    }
}
