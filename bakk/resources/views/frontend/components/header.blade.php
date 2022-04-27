<section class="top-header desktop" style="background: {{ config('layouts.component.header-top.background') }} ">
    <div class="container">
        <div class="content">
            <div class="left">

                 <a href="{{ route('get.user.transaction') }}" title="Order Tracking" rel="nofollow">Order Tracking</a>
            </div>
            <div class="right">
                @if (Auth::check())
                    <a href="">Hello {{ Auth::user()->name }}</a>
                    <a href="{{  route('get.user.dashboard') }}">My Account</a>
                    <a href="{{  route('get.logout') }}">Sign out </a>
                @else
                    <a href="{{  route('get.register') }}">Register</a>
                    <a href="{{  route('get.login') }}">Sign in</a>
                @endif
             </div>
        </div>
    </div>
</section>
<section class="top-header mobile" style="background: {{ config('layouts.component.header-top.background') }} !important ">
    <div class="container">
        <div class="content">
            <div class="left">

                <a href="{{ route('get.user.transaction') }}" title="Order Tracking" rel="nofollow">Order Tracking</a>
                @if (Auth::check())
                    <a href="">Hello {{ Auth::user()->name }}</a>
                    <a href="{{  route('get.user.dashboard') }}">My Account</a>
                    <a href="{{  route('get.logout') }}">Sign out </a>
                @else
                    <a href="{{  route('get.register') }}">Register</a>
                    <a href="{{  route('get.login') }}">Sign in</a>
                @endif
            </div>
        </div>
    </div>
</section>

<div class="commonTop">
    <div id="headers" style="background: {{ config('layouts.component.menu.background') }} ">
        <div class="container header-wrapper">
            
            <div class="logo">
                <a href="/" class="desktop">
                    <img src="{{ url('images/logo.png') }}" style="height: 80px;" alt="Home">
                </a>
                <span class="menu js-menu-cate"><i class="fa fa-list-ul"></i> </span>
            </div>
            <div class="search">

                <form action="{{ $link_search ?? route('get.product.list',['k' => Request::get('k')]) }}" role="search" method="GET">
                    <input type="text" name="k" value="{{ Request::get('k') }}" class="form-control" placeholder="Search in Store...">
                    <button type="submit" class="btnSearch">
                        <i class="fa fa-search"></i>
                        <span>Search</span>
                    </button>
                </form>
            </div>
            <ul class="right">
                <li>
                    <a href="{{ route('get.shopping.list') }}" title="Cart">
                        <i class="la la-shopping-cart"></i>
                        <span class="text">
                            <span class="">Cart ({{ \Cart::count() }})</span>
                            <span></span>
                        </span>
                    </a>
                </li>
                <li class="desktop">
                    <a href="tel:18006005" title="" class="info-user js-show-dropdown">
                        <img src="{{ asset('images/account.png') }}" alt="">
                        <span class="fa fa-angle-down"></span>
                    </a>
                    <ul class="header-menu-user">
                        @foreach(config('user') as $item)
                            <li>
                                <a href="{{ route($item['route']) }}" class="{{ \Request::route()->getName() == $item['route'] ? 'active' : '' }}">
                                    <i class="{{ $item['icon'] }}"></i>
                                    <span>{{ $item['name'] }}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </li>
            </ul>

            <div id="menu-main" class="container" style="display: none">
                <ul class="menu-list">
                    @foreach($categories as $item)
                    <li>
                        <a href="{{  route('get.category.list', $item->c_slug.'-'.$item->id) }}"
                           title="{{  $item->c_name }}" class="js-open-menu">
                            <img src="{{ pare_url_file($item->c_avatar) }}" alt="{{ $item->c_name }}">
                            <span>{{  $item->c_name }}</span>
                            @if (isset($item->children) && count($item->children))
                                <span class="fa fa-angle-right"></span>
                            @else
                                <span></span>
                            @endif
                        </a>
                        @if (isset($item->children) && count($item->children))
                        <div class="submenu">
                            <div class="group">
                                <div class="item">
                                    @foreach($item->children as $children)
                                        <a href="{{  route('get.category.list', $children->c_slug.'-'.$children->id) }}"
                                           title="{{  $children->c_name }}" class="js-open-menu">
                                            <span>{{  $children->c_name }}</span>
                                        </a>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        @endif
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>

    </div>
</div>
