<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestPayIn extends FormRequest
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
            'pi_user_id'         => 'required',
            'pi_money'          => 'required',
        ];
    }

    public function messages()
    {
        return [
            'pi_user_id.required'         => 'Required fields cannot be blank',
            'pi_money.required'         => 'Required fields cannot be blank',
        ];
    }
}
