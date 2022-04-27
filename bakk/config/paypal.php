<?php
/**
 * User: bakk .
 * Date: 2/14/22 .
 * Time: 11:57 PM .
 */


return [
    // Client ID 
    'client_id' => env('PAYPAL_CLIENT_ID','AZF7ubGy7xn-mNfgu0RoT0lyUyNtaEgB5a5b8D5vfDOfxoVW5ZGxpHAmf2FgI4VvaPdsw2LU8JPG1DiO'),
    // Secret app
    'secret' => env('PAYPAL_SECRET','EBjknDCMVQgPHl1xptSQV25SWb49zU5bLuaslSxQiaL5YxkKa2GMKYKmKcmXct0Cmsj-xdAsGnzWwWM_'),
    'settings' => [
        // PayPal mode, sanbox or live
        'mode' => env('PAYPAL_MODE','sandbox'),
        // Time to connect a session (by second)
        'http.ConnectionTimeOut' => 30,
        // get log when having error
        'log.logEnabled' => true,
        // path log
        'log.FileName' => storage_path() . '/logs/paypal.log',
        // Log type
        'log.LogLevel' => 'FINE'
    ],
];
