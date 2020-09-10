<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class News
 * @package App\Models
 * @property $preview text
 */
class News extends Model
{
    /**
     * @var string
     */
    protected $table = 'news';

    /**
     * @var string[]
     */
    protected $fillable = [
        'title', 'news_text', 'preview', 'user_id', 'image'
    ];
}
