<style type="text/css">
    .item__content .active a {
        color: red;
    }
</style>
<div class="filter-sidebar">
    {{-- @if (isset($attributes))
        @foreach($attributes as $key => $attribute)
            <div class="item">
                <div class="item__title">{{ $key }}</div>
                <div class="item__content">
                    <ul>
                        @foreach($attribute as $item)
                            <li class=" js-param-search {{ Request::get('attr_'.$item['atb_type']) == $item['id'] ? "active" : "" }}"
                            data-param="attr_{{ $item['atb_type'] }}={{ $item['id'] }}">
                                <a href="{{ request()->fullUrlWithQuery(['attr_'.$item['atb_type'] => $item['id']]) }}">
                                    <span>{{ $item['atb_name'] }}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        @endforeach
    @endif --}}
    <div class="item">
        <div class="item__title">Category</div>
        <div class="item__content ratings">
            <ul>
                @foreach($categories as $item)
                    <li>
                        <a href="{{  route('get.category.list', $item->c_slug.'-'.$item->id) }}"
                           title="{{  $item->c_name }}" class="js-open-menu">
                          
                            {{  $item->c_name }}
                            {{-- <span></span> --}}
                            @if (isset($item->children) && count($item->children))
                                {{-- <span class="fa fa-angle-right"></span> --}}
                                
                            @else
                                {{-- <span></span> --}}
                            @endif
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>

    
</div>
