<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestAttribute extends FormRequest
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
            'atb_name'         => 'required|max:190|min:3|unique:attributes,atb_name,'.$this->id,
            'atb_type'         => 'required',
            'atb_category_id'  => 'required'
        ];
    }

    public function messages()
    {
        return [
            'atb_name.required'         => 'Required fields cannot be blank',
            'atb_name.unique'           => 'Something went wrong. Please try again',
            'atb_type.required'         => 'Required fields cannot be blank',
            'atb_category_id.required'  => 'Required fields cannot be blank'
        ];
    }
}
