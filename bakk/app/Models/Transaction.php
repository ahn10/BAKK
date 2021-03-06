<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Transaction extends Model
{
    protected $guarded = [''];

    const TYPE_TRANSFER = 1;
    const TYPE_ONLINE   = 2;

    const STATUS_DEFAULT = 1;
    const STATUS_PROCESS = 2;
    const STATUS_SUCCESS = 3;
    const STATUS_CANCEL = -1;

    protected $status = [
        '1' => [
            'class' => 'default',
            'name'  => 'In Progress'
        ],
        '2' => [
            'class' => 'info',
            'name'  => 'Delivering'
        ],
        '3' => [
            'class' => 'success',
            'name'  => 'Completed'
        ],
        '-1' => [
            'class' => 'danger',
            'name'  => 'Canceled'
        ],
    ];

    public function getStatus()
    {
        return Arr::get($this->status, $this->tst_status,"[N\A]");
    }

    public function user()
    {
        return $this->belongsTo(User::class,'tst_user_id','id');
    }

	public function admin()
	{
		return $this->belongsTo(Admin::class,'tst_admin_id','id');
	}
}
