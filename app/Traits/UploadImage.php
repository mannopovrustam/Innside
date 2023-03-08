<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 02.06.2022
 * Time: 13:24
 */

namespace App\Traits;


use Illuminate\Support\Str;
use Image;

trait UploadImage
{
    public function uploadImage($image, $directory)
    {
        if (!\File::isDirectory($directory)){
            mkdir($directory);
        }
        $photo_name = Str::random(10);
        if (in_array($image->getClientOriginalExtension(), ['JPG','PNG','GIF','BMP','WebP'])){
            $height = Image::make($image)->height();
            $width = Image::make($image)->width();
            Image::make($image)->encode('webp', 90)->resize($width, $height)->save(public_path($directory.'/'  .  $photo_name . '.webp'));
            $values['photo'] = '/'.$directory .'/'. $photo_name.'.webp';
        }else{
            $image->move(base_path() . '/public/'.$directory.'/', $photo_name . '.' . $image->getClientOriginalExtension());
            $values['photo'] = '/'.$directory .'/'. $photo_name.'.'.$image->getClientOriginalExtension();
        }
        return $values['photo'];
    }
}