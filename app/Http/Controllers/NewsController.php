<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    /**
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(): \Illuminate\View\View
    {
        $news = News::paginate(5);
        return view('news', compact('news'));
    }

    /**
     * @param Request $request
     * @param int $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show(Request $request, int $id): \Illuminate\View\View
    {
        if (!News::find($id)) {
            return abort(404);
        }
        $currentNews = News::whereId($id)->first();
        return view('news-detail', compact('currentNews'));
    }
}
