<div class="filter">
    <div>Sort by :</div>
    <div>
        <ul>
            <li><a href="" class="active">ALL</a></li>
            @for ($i = 5 ; $i >= 1 ; $i --)
                <li><a href="" >{{ $i }} star</a></li>
            @endfor
        </ul>
    </div>
</div>