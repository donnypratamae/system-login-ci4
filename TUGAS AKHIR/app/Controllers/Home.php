<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        echo view('beranda/index');
    }
    public function register()
    {
        return view('auth/register');
    }
    public function user()
    {
        return view('user/index');
    }
    public function beranda()
    {
        return view('auth/beranda');
    }
}
