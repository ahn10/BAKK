@for ($i = 1 ; $i <= 10 ; $i ++)
    <div class="item">
        <p class="item_author">
            <span>{{ $review->user->name ?? "Admin" }}</span>
            <span class="item_success"><i class="la la-check-circle"></i> Purchased at BAKK</span>
        </p>
        <div class="item_review">
            <span class="item_review">
                @for ($j = 1 ; $j <= 5 ; $j ++)
                    <i class="la la-star {{ $j <= rand(1,5) ? 'active' : '' }}"></i>
                @endfor
            </span>
            
            This game is great!!!!
        </div>
        <div class="item_footer">
            <span class="item_time"><i class="la la-clock-o"></i> rated 1 day ago</span>
        </div>
    </div>
@endfor