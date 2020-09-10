@extends('layout')

@section('content')
    @php /** @var $news App\Models\News */ @endphp
    @foreach($news as $item)
        <div class="d-flex justify-content-center">
            <div class="item d-md-flex align-items-start mb-50">
                <div class="item_thumb">
                    <a href="/news/{{$item->id}}"> <img src="{{$item->image}}" alt=""
                                                        class="item_img rounded mx-auto d-block"></a>
                </div>
                <div class="item_content container-md">
                    <h3 class="item_title display-4 font-pt mb-2"> <a href="/news/{{$item->id}}">{{ $item->title }} </a></h3>

                    <span class="item_description">{{ Str::limit($item->preview, 250, ' ...') }}</span>
                </div>


            </div>

        </div>

    @endforeach

    <div class="pagination pagination-lg justify-content-center dark">
        {{ $news->links() }}
    </div>
@endsection
