<div id="footer">
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title">About Us</div>
                    <ul>
                        <li>
                            <a href="{{ route('get.contact') }}">Contact Us</a>
                        </li>
                        <li>
                            <a href="{{ route('get.product.list') }}">Products</a>
                        </li>
                        <li>
                            <a href="{{ route('get.register') }}">Register</a>
                        </li>
                        <li>
                            <a href="{{ route('get.login') }}">Sign in</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">News</div>
                    <ul>
                        <li>
                            <a href="{{ route('get.blog.home') }}">Articles</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Policy</div>
                    <ul>
                        <li><a href="{{ route('get.static.shopping_guide') }}">Shopping Guide</a></li>
                        <li><a href="{{  route('get.static.return_policy') }}">Return Policy</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Hot Category</div>
                    @if (isset($categoriesHot))
                        <ul>
                            @foreach($categoriesHot as $item)
                                <li>
                                    <a href="{{  route('get.category.list', $item->c_slug.'-'.$item->id) }}" title="{{ $item->c_name }}">{{ $item->c_name }}</a>
                                </li>
                            @endforeach
                        </ul>
                    @endif
                </div>
            </div>
            <div class="bot">
                <div class="social">
                    <div class="title">Connect with us</div>
                    <p>
                        <a href="https://www.youtube.com/" class="fa fa fa-youtube"></a>
                        <a href="https://www.facebook.com/" class="fa fa-facebook-official"></a>
                        <a href="https://www.twitter.com/" class="fa fa-twitter"></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

