@extends('layout')

@section('content')

<div class="d-flex justify-content-center">
    <div class="item item_full d-md-flex align-items-start mb-50">
        <div class="item_content container-md">
            <h3 class="item_title item_title_full display-4 font-pt">{{$currentNews->title}} </h3>

            <span class="item_description item_description_full">{{$currentNews->preview }}</span>
            <img class="img_full" src="{{$currentNews->image}}" alt="">
            <p class="small_full_text">{{$currentNews->text }}</p>
        </div>
    </div>

    </div>
@endsection
