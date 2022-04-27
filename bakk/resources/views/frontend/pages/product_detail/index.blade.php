@extends('layouts.app_master_frontend')
@section('css')
    <style>
        <?php $style = file_get_contents('css/product_detail_insights.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <div class="container">
        <div class="breadcrumb">
            <ul>
                <li>
                    <a itemprop="url" href="/" title="Home"><span itemprop="title">Home</span></a>
                </li>
                <li>
                    <a itemprop="url" href="{{ route('get.product.list') }}" title="Products"><span
                            itemprop="title">Game</span></a>
                </li>

                <li>
                    <a itemprop="url" href="" title=""><span itemprop="title">{{ $product->pro_name }}</span></a>
                </li>

            </ul>
        </div>
        <div class="card">
            <div class="card-body info-detail">
                <div class="left">
{{--                    @include('frontend.pages.product_detail.include._inc_album')--}}
                    <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" title=""
                       class="">
                        <img alt="" style="max-width: 100%;width: 100%;height: auto" src="{{ pare_url_file($product->pro_avatar) }}"
                             class="lazyload">
                    </a>
                </div>
                <div class="right" id="product-detail" data-id="{{ $product->id }}">
                    <h1>{{  $product->pro_name }}</h1>
                    <div class="right__content">
                        <div class="info">

                            <div class="prices">
                                @if ($product->pro_sale)
                                    <p>Price:
                                        <span class="value">${{ number_format($product->pro_price,2,'.',',') }} </span>
                                    </p>
                                    @php
                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                    @endphp
                                    <p>
                                        Price: <span
                                            class="value price-new">${{  number_format($price,2,'.',',') }} </span>
                                        <span class="sale">-{{  $product->pro_sale }}%</span>
                                    </p>
                                @else
                                    <p>
                                        Price: <span class="value price-new">${{  number_format($product->pro_price,2,'.',',') }} </span>
                                    </p>
                                @endif
                                <p>
                                    <span>View :&nbsp</span>
                                    <span>{{ $product->pro_view }}</span>
                                </p>
                            </div>
                            <div class="btn-cart">
                                <a href="{{ route('get.shopping.add', $product->id) }}" title=""
                                   onclick="add_cart_detail('17617',0);" class="buynow">
                                    <span>BUY NOW</span>
                                    
                                </a>
                                <a href="{{ route('ajax_get.user.add_favourite', $product->id) }}"
                                   title="Add to Wish List"
                                   class="installmentplan  {{ !\Auth::id() ? 'js-show-login' : 'js-add-favourite' }}">
                                    <span>ADD to List</span>
                                    
                                </a>
                            </div>
                            <div class="infomation">
                                <h2 class="infomation__title">Information</h2>
                                <div class="infomation__group">

                                    <div class="item">
                                        <p class="text1">Category:</p>
                                        <h3 class="text2">
                                            @if (isset($product->category->c_name))
                                                <a href="{{  route('get.category.list', $product->category->c_slug).'-'.$product->pro_category_id }}">{{ $product->category->c_name }}</a>
                                            @else
                                                "[N\A]"
                                            @endif
                                        </h3>
                                    </div>
                                    @foreach($attribute as $key => $attr)
                                    <div class="item">
                                        @foreach($attr as  $k => $at)
                                            @if (in_array($k, $attributeOld))
                                                <p class="text1">{{ $key }}:</p>
                                                <h3 class="text2">{{ $at['atb_name'] }}</h3>
                                            @endif
                                        @endforeach
                                    </div>
                                    @endforeach
                                </div>
                            </div>
{{--                            @include('frontend.pages.product_detail.include._inc_keyword')--}}
                        </div>
                        @if (isset($event1))
                            <div class="ads">
                                <a href="#" title="Sale Off" target="_blank"><img alt="Refund" style="width: 100%"
                                                                                  src="{{ pare_url_file($event1->e_banner) }}"></a>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
            <div class="" style="margin-bottom: 10px">
                <h4 class="reviews-title"><b>Description</b></h4>
                {!! $product->pro_content !!}
                @if($product->pro_link)
                <iframe src="{{ $product->pro_link }}" width="100%" height="1000"></iframe>
                @endif
            </div>
            @include('frontend.pages.product_detail.include._inc_ratings')
            <div class="comments">
                <div class="form-comment">
                    <form action="" method="POST">
                        <input type="hidden" name="productId" value="{{ $product->id }}">
                        <div class="form-group">
                            <textarea placeholder="Please leave your comments..." name="comment" class="form-control" id="" cols="30" rows="5"></textarea>
                        </div>
                        <div class="footer">
                            <p>
{{--                                <a href=""><i class="la la-camera"></i>Send Image</a>--}}
{{--                                <a href="">Post Policy</a>--}}
                            </p>
                            <button class=" {{ \Auth::id() ? 'js-save-comment' : 'js-show-login' }}">Post Comment</button>
                        </div>
                    </form>
                </div>
                @include('frontend.pages.product_detail.include._inc_list_comments')
            </div>

        </div>
        <div class="card-body product-des">
            <div class="left">
                <div class="tabs">
                    <div class="tabs__content">
                        <div class="product-five">
                            <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                                @foreach($productsSuggests as $product)
                                    <div class="item">
                                        @include('frontend.components.product_item',['product' => $product])
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right">
                @if (isset($event3))
                <a href="#" title="Sale Off" target="_blank"><img alt="Refund" style="width: 100%"
                                                                  src="{{ pare_url_file($event3->e_banner) }}"></a>
                @endif
            </div>
        </div>
    </div>
    @if ($isPopupCaptcha >= 2)
        @include('frontend.pages.product_detail.include._inc_popup_captcha')
    @endif
@stop
@section('script')
    <script>
		var ROUTE_COMMENT = '{{ route('ajax_post.comment') }}';
		var CSS = "{{ asset('css/product_detail.min.css') }}";
		var URL_CAPTCHA = '{{ route('ajax_post.captcha.resume') }}'
    </script>
    <script src="{{ asset('js/product_detail.js') }}" type="text/javascript"></script>

@stop
