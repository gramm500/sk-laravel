<?php

namespace App\Console\Commands;

use App\Models\News;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;

class AddNewsToDataBase extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'add:news';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = '';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        try {
            $response = Http::get(str_replace('{key}', env('API_NEWS_KEY'), env('API_NEWS')))->json();
            $data = [];
            foreach ($response["articles"] as $item) {
                array_push($data, [
                    'title' => $item['title'],
                    'preview' => $item['description'],
                    'text' => $item['content'],
                    'user_id' => 1,
                    'image' => $item['urlToImage'],
                ]);
            }
            News::query()->insert($data);
            $this->info("News have been added in DB!");
        } catch (\Exception $exception) {
            $this->alert('Error: '. $exception);
        }

    }
}
