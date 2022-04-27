<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestAccount extends FormRequest
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
        $rules = [
            'email'     => 'required|max:190|min:3|unique:admins,email,'.$this->id,
            'name'      => 'required',
            'phone'     => 'required|unique:admins,phone,'.$this->id,
        ];

        if (!$this->id) 
        {
            $rules['password'] = 'required';
        }

        return $rules;
    }

    public function messages()
    {
        return [
            'email.required'         => 'Required fields cannot be blank',
            'email.unique'           => 'Something went wrong. Please try again',
            'phone.unique'           => 'Something went wrong. Please try again',
            'phone.required'         => 'Required fields cannot be blank',
            'password.required'      => 'Required fields cannot be blank',
        ];
    }
}
