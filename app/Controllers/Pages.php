<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            "title" => "Home | Yanyan Permana",
            "tes"   => ["dstu", "dua", "tiga"],
        ];
    }
}
