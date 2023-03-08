<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 02.06.2022
 * Time: 14:02
 */

namespace App\Services;

use App\Models\Selectable;
use App\Traits\UploadImage;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class CreateModelData
{
	use UploadImage;
	protected $directory;

	public function __construct()
	{
		$this->directory = substr(\Request::segment(1), 0, -1);
	}

	public function create($request, $model, $type = null)
	{
		$values = Arr::except($request->all(), $this->exceptData());

        if ($request->file('photo_card')) {
            $values['photo_card'] = $this->uploadImage($request->photo_card, $this->directory);
        }
        if ($request->file('photo_bg')) {
            $values['photo_bg'] = $this->uploadImage($request->photo_bg, $this->directory);
        }
        if ($request->file('genplan')) {
            $values['genplan'] = $this->uploadImage($request->genplan, $this->directory);
        }
        if ($request->file('photo')) {
            $values['photo'] = $this->uploadImage($request->photo, $this->directory);
        }

		$model::updateOrCreate(['id' => $request->data_id], $values);
    }
}
