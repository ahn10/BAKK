<?php
return [
    [
        'name' => 'Product',
        'list-check' => ['attribute','category','keyword','product','comment','rating'],
        'icon' => 'fa fa-database',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Attribute',
                'namespace' => 'attribute',
                'route' => 'admin.attribute.index',
                'icon'  => 'fa fa-key',
				'level'  => [1,2],
            ],
            [
                'name'  => 'Category',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'fa fa-edit',
				'level'  => [1,2],
            ],
//            [
//                'name'  => 'keyword',
//                'namespace' => 'keyword',
//                'route' => 'admin.keyword.index',
//                'icon'  => 'fa fa-key',
//				'level'  => [1,2],
//            ],
            [
                'name'  => 'Product',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'fa fa-database',
				'level'  => [1,2],
            ],
			[
                'name'  => 'Rating',
                'namespace' => 'rating',
                'route' => 'admin.rating.index',
                'icon'  => 'fa fa-star',
				'level'  => [1,2],
            ],
			[
                'name'  => 'Comment',
                'namespace' => 'comment',
                'route' => 'admin.comment.index',
                'icon'  => 'fa fa-star',
				'level'  => [1,2],
            ],
        ]
    ],
    [
        'name' => 'News',
        'list-check' => ['menu','article'],
        'icon' => 'fa fa-edit',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Menu Article',
                'namespace' => 'menu',
                'route' => 'admin.menu.index',
                'icon'  => 'fa fa-key',
				'level'  => [1,2],
            ],
            [
                'name'  => 'Articles',
                'namespace' => 'article',
                'route' => 'admin.article.index',
                'icon'  => 'fa fa-key',
				'level'  => [1,2],
            ],
        ]
    ],
	[
		'name' => 'Partner',
		'list-check' => ['user','ncc'],
		'icon' => 'fa fa-user',
		'level'  => [1,2],
		'sub'  => [
			[
				'name'  => 'Customer',
				'route' => 'admin.user.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-user',
				'level'  => [1,2],
			],
			[
				'name'  => 'Supplier',
				'route' => 'admin.ncc.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-users',
				'level'  => [1,2],
			],
            [
               'name'  => 'Contact',
               'namespace' => 'contact',
               'route' => 'admin.contact',
               'icon'  => 'fa fa-star',
               'level'  => [1,2],
           ],
		]
	],
//    [
//        'name' => 'Account',
//        'list-check' => ['user','rating','comment','contact'],
//        'icon' => 'fa fa-user',
//        'sub'  => [
//            [
//                'name'  => 'User',
//                'route' => 'admin.user.index',
//                'namespace' => 'user',
//                'icon'  => 'fa fa-user'
//            ],
//            [
//                'name'  => 'Rating',
//                'namespace' => 'rating',
//                'route' => 'admin.rating.index',
//                'icon'  => 'fa fa-star'
//            ],
//            [
//                'name'  => 'Comment',
//                'namespace' => 'comment',
//                'route' => 'admin.comment.index',
//                'icon'  => 'fa fa-star'
//            ],

//        ]
//    ],
    [
        'name' => 'Managing Order',
        'list-check' => ['transaction'],
        'icon' => 'fa-shopping-cart',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Order List',
                'namespace' => 'transaction',
                'route' => 'admin.transaction.index',
                'icon'  => 'fa-opencart',
				'level'  => [1,2],
            ]
        ]
    ],
	[
        'name' => 'Warehouse',
        'list-check' => ['inventory','import','export'],
        'icon' => 'fa-shopping-cart',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Stock delivering',
                'namespace' => 'import',
                'route' => 'admin.inventory.warehousing',
                'icon'  => 'fa-opencart',
				'level'  => [1,2],
            ],
			[
				'name'  => 'Stock delivering',
				'namespace' => 'export',
				'route' => 'admin.export.out_of_stock',
				'icon'  => 'fa-opencart',
				'level'  => [1,2],
			],
        ]
    ],
//    [
//        'name' => 'SystemPay',
//        'list-check' => ['pay-in'],
//        'icon' => 'fa  fa-usd',
//        'sub'  => [
//            [
//                'name'  => 'Pay in',
//                'route' => 'admin.system_pay_in.index',
//                'namespace' => 'pay-in',
//                'icon'  => 'fa fa-money'
//            ]
//        ]
//    ],
    [
        'name'  => 'System',
        'label' => 'true'
    ],
	[
		'name' => 'System',
		'list-check' => ['slide','account_admin','event','page-static','statistical'],
		'icon' => 'fa  fa-usd',
		'level'  => [1],
		'sub'  => [
			[
				'name'  => 'Account',
				'route' => 'admin.account_admin.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'Slide',
				'route' => 'admin.slide.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'Events',
				'route' => 'admin.event.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'Policy',
				'route' => 'admin.static.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'Statistics',
				'route' => 'admin.statistical',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
		]
	],
];
