<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestMenu extends FormRequest
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
            'mn_name' => 'required|max:190|min:3|unique:menus,mn_name,'.$this->id
        ];
    }

    public function messages()
    {
        return [
            'mn_name.required'   => 'Required fields cannot be blank',
            'mn_name.unique'     => 'Data is exist',
            'mn_name.max'        => 'Maximum is 190 letters',
            'mn_name.min'        => 'Must be longer 3 letters'
        ];
    }
}
