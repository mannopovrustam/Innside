<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Services\CreateModelData;
use Illuminate\Http\Request;

class MainController extends Controller
{
    public $module, $path;
    public function __construct()
    {
        $this->middleware('auth');
        $this->module = \DB::table('modules')->where('module_table', \Request::segment(1))->first()->module_model;
        $this->path = \Request::segment(1);
    }

    public function index()
    {
        $data = $this->module::all();
        return view('project.'.$this->path.'.data', compact('data'));
    }
    public function create()
    {
        $data = new $this->module();
        return view('project.'.$this->path.'.create', ['data' => $data]);
    }

    public function edit($id)
    {
        $data = $this->module::find($id);
        return view('project.'.$this->path.'.create', ['data' => $data]);
    }

    public function store(Request $request)
    {
        (new CreateModelData())->create($request, $this->module::class, 'categories');
        return back();
    }

    public function show($id)
    {
        $data = $this->module::find($id);
        return view('project.'.$this->path.'.show', [
            'data' => $data
        ]);
    }

}
