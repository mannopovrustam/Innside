<?php

namespace App\Http\Controllers;

use App\Models\Hotel;
use App\Traits\UploadImage;
use Illuminate\Http\Request;

class HotelController extends Controller
{
    use UploadImage;
    public $module, $path, $directory;
    public function __construct()
    {
        $this->middleware('auth');
        $this->module = \DB::table('modules')->where('module_table', \Request::segment(1))->first()->module_model;
        $this->path = \Request::segment(1);
        $this->directory = 'img/'.\Request::segment(1);
    }

    public function index()
    {
        $data = $this->module::all();
        return view('project.'.$this->path.'.data', ['data' => $data]);
    }

    public function create()
    {
        $data = new $this->module();
        return view('project.'.$this->path.'.create', ['data' => $data]);
    }

    public function store(Request $request)
    {
        $values = $request->except(['id', '_token', 'data_id', 'photo', 'photos_room','photos_reception','photos_front','photos_bathroom','photos_breakfast','photos_other','main_photo']);

        $values['active'] = $request->active == 'on';
        $values['comfortables'] = implode(",", $request->comfortables);

        $arr = ['photo', 'photos_room', 'photos_reception', 'photos_front', 'photos_bathroom', 'photos_breakfast', 'photos_other', 'main_photo'];
        foreach($arr as $a){
            if ($request->file($a)) {
                $values[$a] = $this->uploadImage($request->$a, $this->directory);
            }
        }

        $this->module::updateOrCreate(['id' => $request->data_id], $values);

        return back();
    }

    public function show(int $id)
    {
        $data = $this->module::find($id);
        return view('project.'.$this->path.'.show', ['data' => $data]);
    }

    public function edit(string $id)
    {
        $data = $this->module::find($id);
        return view('project.'.$this->path.'.create', ['data' => $data]);
    }
    public function destroy(string $id)
    {
        $this->module::find($id)->delete();
        return back();
    }
}
