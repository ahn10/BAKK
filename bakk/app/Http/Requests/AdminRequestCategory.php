<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestCategory extends FormRequest
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
            'c_name' => 'required|max:190|min:3|unique:categories,c_name,'.$this->id
        ];
    }

    public function messages()
    {
        return [
            'c_name.required'   => 'Required fields cannot be blank',
            'c_name.unique'     => 'Something went wrong. Please try again',
            'c_name.max'        => 'Maximum is 190 letters',
            'c_name.min'        => 'Must be longer 3 letters'
        ];
    }
}
