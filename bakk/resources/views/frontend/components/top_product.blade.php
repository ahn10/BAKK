<div class="best-sell">
    <div class="title">Best Seller</div>
    <div class="content">
        @foreach($products as $product)
            <div class="item">
                <div class="item__avatar">
                    <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" title="" class="image cover">
                        <img  class="lazyload lazy" src="{{  asset('images/preloader.gif') }}"  alt="" data-src="{{ pare_url_file($product->pro_avatar) }}">
                    </a>
                </div>
                <div class="item__info">
                    <a href="#" title="" class="cate">{{ $product->category->c_name ?? "[N\A]" }}</a>
                    @if ($product->pro_sale)
                        <a href="" title="SaleOff" class="cate sale">-{{ $product->pro_sale }}%</a>
                    @endif
                    <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" title="" class="name">{{  $product->pro_name }}</a>
                    @if ($product->pro_sale) 
                        <p class="price">
                            <span>Sale: </span>
                            <span class="new">${{ number_format(number_price($product->pro_price,$product->pro_sale),2,'.',',') }}</span>
                        </p>
                        <p class="price">
                            <span>Price: </span>
                            <span class="old">${{  number_format($product->pro_price,2,'.',',') }}</span>
                        </p>
                    @else 
                        <p class="price">
                            <span>Price: </span>
                            <span class="new" style="color:Black;">${{  number_format($product->pro_price,2,'.',',') }}</span>
                        </p>
                    @endif
                    
                </div>
            </div>
        @endforeach
    </div>
</div>