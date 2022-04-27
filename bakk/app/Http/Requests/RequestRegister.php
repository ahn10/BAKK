<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RequestRegister extends FormRequest
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

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email'     => 'required|max:190|min:3|unique:users,email,'.$this->id,
            'name'      => 'required',
            'phone'     => 'required|unique:users,phone,'.$this->id,
            'password'  => 'required',
//            'g-recaptcha-response' => 'required|captcha'
        ];
    }

    public function messages()
    {
        return [
            'email.required'         => 'Required fields cannot be blank',
            'email.unique'           => 'Data is exist',
            'phone.unique'           => 'Data is exist',
            'phone.required'         => 'Required fields cannot be blank',
            'password.required'      => 'Required fields cannot be blank',
        ];
    }
}
