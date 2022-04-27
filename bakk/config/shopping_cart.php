<?php

use App\Services\ShoppingCartService\PayOnlinePaymentService;
use App\Services\ShoppingCartService\PayTransferService;

return [
    'progress'  => [
        '-1' => 'Ordered Successfully',
        '1'  => 'Processing',
        '2'  => 'In transit',
        '3'  => 'Completed',
    ],
    'drive_pay' => [
        'transfer' => [
            'process' => PayTransferService::class
        ],
        'online'   => [
            'process' => PayOnlinePaymentService::class
        ]
    ]
];
