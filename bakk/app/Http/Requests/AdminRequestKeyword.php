<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestKeyword extends FormRequest
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
            'k_name' => 'required|max:190|min:3|unique:keywords,k_name,'.$this->id
        ];
    }

    public function messages()
    {
        return [
            'k_name.required'   => 'Required fields cannot be blank',
            'k_name.unique'     => 'Data is exist',
            'k_name.max'        => 'Maximum is 190 letters',
            'k_name.min'        => 'Must be longer 3 letters'
        ];
    }
}
