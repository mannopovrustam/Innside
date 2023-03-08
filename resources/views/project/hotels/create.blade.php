@extends('layouts.app')

@section('style')
    <style type="text/css">
        #map {
            width: 100%;
            height: 95%;
        }
    </style>
@endsection
@section('script')
    <script src="{{ asset('assets/libs/select2/js/select2.min.js') }}"></script>
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=72330577-2ad1-4523-a89b-adf8226b9aed"></script></head>
    <script src="{{ asset('js/event_reverse_geocode.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/main.js') }}"></script>
@endsection

@section('content')

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <form id="w0" action="/hotels" method="post" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="data_id" value="{{ $data->id }}">

                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group field-hotels-username required">
                                        <label for="hotels-username" class="form-label">User Name</label>
                                        <input type="text" id="hotels-username" class="form-control"
                                               name="username" value="{{ $data->username }}" maxlength="255" aria-required="true">
                                        <div class="invalid-feedback"></div>
                                    </div>
                                    <div class="form-group field-hotels-title_ru required">
                                        <label for="hotels-title_ru" class="form-label">Hotel name</label>
                                        <input type="text" id="hotels-title_ru" class="form-control"
                                               name="title_ru" value="{{ $data->title_ru }}" maxlength="255" aria-required="true">

                                        <div class="invalid-feedback"></div>
                                    </div>

                                    <div class="form-group field-hotels-password required">
                                        <label for="hotels-password" class="form-label">Password</label>
                                        <input type="password" id="hotels-password" class="form-control"
                                               name="password" maxlength="255" aria-required="true">

                                        <div class="invalid-feedback"></div>
                                    </div>

                                </div>
                                <div class="col-6">
                                    <div class="form-group field-hotels-region_id required">
                                        <label for="hotels-region_id" class="form-label">Region</label>
                                        <select id="hotels-region_id" class="form-control" name="region_id"
                                                aria-required="true">
                                            @foreach (\App\Models\Region::all() as $region)
                                                <option value="{{ $region->id }}" @selected($data->region_id == $region->id)>{{ $region->title_ru }}</option>
                                            @endforeach
                                        </select>
                                        <div class="invalid-feedback"></div>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label">Facility</label>
                                        <select class="select2 form-control select2-multiple" multiple="multiple" name="comfortables[]" data-placeholder="Choose ...">
                                            @foreach (\App\Models\Comfortable::all() as $facility)
                                                <option value="{{ $facility->id }}" @if(in_array($facility->id, explode(',', $data->comfortables))) selected @endif>{{ $facility->title_ru }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="d-flex justify-content-between">
                                        <div class="form-group field-hotels-address required">
                                            <label for="hotels-address" class="form-label">Address</label>

                                            <input type="text" id="hotels-address" class="form-control"
                                                   name="address" value="{{ $data->address }}" maxlength="255" aria-required="true">
                                            <button type="button" class="btn btn-primary waves-effect waves-light" data-bs-toggle="modal" data-bs-target="#location">Pick location</button>
                                            <div class="invalid-feedback"></div>
                                        </div>
                                        <div class="form-group field-hotels-latitude">

                                            <input type="hidden" id="hotels-latitude" class="form-control"
                                                   name="latitude" value="{{ $data->latitude }}">

                                            <div class="invalid-feedback"></div>
                                        </div>
                                        <div class="form-group field-hotels-longitude">

                                            <input type="hidden" id="hotels-longitude" class="form-control"
                                                   name="longitude" value="{{ $data->longitude }}">

                                            <div class="invalid-feedback"></div>
                                        </div>


                                        <div class="modal fade" id="location" aria-hidden="true" aria-labelledby="..." tabindex="-1">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">Pick location</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div id="mapGetLocation" style="height: 500px;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <label class="rating-label">
                                            <strong>Rating</strong><br>
                                            <input class="rating" max="5"
                                                oninput="this.style.setProperty('--value', this.value)" step="1" type="range" name="rating"
                                                   value="{{ $data->rating }}"
                                                style="--value:0;">
                                        </label>


                                        <div class="form-group field-hotels-active">
                                            <label class="font-size-14 mb-3">Active</label>
                                            <div class="d-flex">
                                                <div class="square-switch">
                                                    <input type="checkbox" id="square-switch1" switch="none" name="active" @checked($data->active)/>
                                                    <label for="square-switch1" data-on-label="On" data-off-label="Off"></label>
                                                </div>
                                            </div>

                                            <div>
                                                <div class="invalid-feedback"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <img src="{{ $data->main_photo ?? '/img/no-image.jpg' }}" class='main_photo' width="100" height="100"/>

                            <div class="form-group field-hotels-main_photo required">
                                <label for="hotels-main_photo">Main Photo</label>
                                <input type="hidden" name="main_photo" value="">
                                <input type="file" id="hotels-main_photo" class="form-control-file" name="main_photo" aria-required="true">

                                <div class="invalid-feedback"></div>
                            </div>
                            <span>Max size: 500Kb</span>

                            <!-- <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" id="customSwitch1" name="Hotelsactive">
                                <label class="custom-control-label" for="customSwitch1">Active</label>
                            </div> -->


                            <div class="row">
                                <div class="col-2">

                                    <img src="{{ $data->photos_room ?? '/img/no-image.jpg' }}" class='photos_room' width="100" height="100"/>
                                    <div class="form-group field-hotels-photos_room">
                                        <label for="hotels-photos_room">Photos Room</label>
                                        <input type="hidden" name="photos_room" value=""><input type="file"
                                                                                                        id="hotels-photos_room"
                                                                                                        class="form-control-file"
                                                                                                        name="photos_room">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                    <span>Max size: 500Kb</span>

                                </div>
                                <div class="col-2">
                                    <img src="{{ $data->photos_reception ?? '/img/no-image.jpg' }}" class='photos_reception' width="100" height="100"/>
                                    <div class="form-group field-hotels-photos_reception">
                                        <label for="hotels-photos_reception">Photos Reception</label>
                                        <input type="hidden" name="photos_reception" value=""><input type="file"
                                                                                                             id="hotels-photos_reception"
                                                                                                             class="form-control-file"
                                                                                                             name="photos_reception">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                    <span>Max size: 500Kb</span>
                                </div>

                                <div class="col-2">
                                    <img src="{{ $data->photos_front ?? '/img/no-image.jpg' }}" class='photos_front' width="100" height="100"/>
                                    <div class="form-group field-hotels-photos_front">
                                        <label for="hotels-photos_front">Photos Front</label>
                                        <input type="hidden" name="photos_front" value=""><input type="file"
                                                                                                         id="hotels-photos_front"
                                                                                                         class="form-control-file"
                                                                                                         name="photos_front">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                    <span>Max size: 500Kb</span>
                                </div>

                                <div class="col-2">
                                    <img src="{{ $data->photos_bathroom ?? '/img/no-image.jpg' }}" class='photos_bathroom' width="100" height="100"/>
                                    <div class="form-group field-hotels-photos_bathroom">
                                        <label for="hotels-photos_bathroom">Photos Bathroom</label>
                                        <input type="hidden" name="photos_bathroom" value=""><input type="file"
                                                                                                            id="hotels-photos_bathroom"
                                                                                                            class="form-control-file"
                                                                                                            name="photos_bathroom">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                    <span>Max size: 500Kb</span>
                                </div>

                                <div class="col-2">
                                    <img src="{{ $data->photos_breakfast ?? '/img/no-image.jpg' }}" class='photos_breakfast' width="100" height="100"/>
                                    <div class="form-group field-hotels-photos_breakfast">
                                        <label for="hotels-photos_breakfast">Photos Breakfast</label>
                                        <input type="hidden" name="photos_breakfast" value=""><input type="file"
                                                                                                             id="hotels-photos_breakfast"
                                                                                                             class="form-control-file"
                                                                                                             name="photos_breakfast">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                    <span>Max size: 500Kb</span>
                                </div>

                                <div class="col-2">
                                    <img src="{{ $data->photos_other ?? '/img/no-image.jpg' }}" class='photos_other' width="100" height="100"/>
                                    <div class="form-group field-hotels-photos_other">
                                        <label for="hotels-photos_other">Photos Other</label>
                                        <input type="hidden" name="photos_other" value=""><input type="file"
                                                                                                         id="hotels-photos_other"
                                                                                                         class="form-control-file"
                                                                                                         name="photos_other">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                    <span>Max size: 500Kb</span>
                                </div>
                            </div>

                            <div class="row">

                                <div class="col-12">
                                    <h1>Rooms</h1>
                                </div>

                                <div class="col-2">
                                    <label for="">Single</label>
                                    <div class="form-group field-hotels-count-single">
                                        <label for="hotels-count-single">Count</label>
                                        <input type="number" id="hotels-count-single" class="form-control"
                                               name="single" value="{{ $data->single }}">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                </div>

                                <div class="col-2">
                                    <label for="">Double</label>
                                    <div class="form-group field-hotels-count-double">
                                        <label for="hotels-count-double">Count</label>
                                        <input type="number" id="hotels-count-double" class="form-control"
                                               name="double" value="{{ $data->double }}">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                </div>

                                <div class="col-2">
                                    <label for="">Twin</label>
                                    <div class="form-group field-hotels-count-twin">
                                        <label for="hotels-count-twin">Count</label>
                                        <input type="number" id="hotels-count-twin" class="form-control"
                                               name="twin" value="{{ $data->twin }}">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                </div>

                                <div class="col-2">
                                    <label for="">Triple</label>
                                    <div class="form-group field-hotels-count-triple">
                                        <label for="hotels-count-triple">Count</label>
                                        <input type="number" id="hotels-count-triple" class="form-control"
                                               name="triple" value="{{ $data->triple }}">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                </div>

                                <div class="col-2">
                                    <label for="">Family</label>
                                    <div class="form-group field-hotels-count-family">
                                        <label for="hotels-count-family">Count</label>
                                        <input type="number" id="hotels-count-family" class="form-control"
                                               name="family" value="{{ $data->family }}">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                </div>

                                <div class="col-2">
                                    <label for="">Deluxe</label>
                                    <div class="form-group field-hotels-count-deluxe">
                                        <label for="hotels-count-deluxe">Count</label>
                                        <input type="number" id="hotels-count-deluxe" class="form-control"
                                               name="deluxe" value="{{ $data->deluxe }}">

                                        <div class="invalid-feedback"></div>
                                    </div>
                                </div>

                            </div>

                            <div class="form-group">
                                <div class="alert alert-danger" style="display:none"><p>Please fix the following
                                        errors:</p>
                                    <ul></ul>
                                </div>
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-success">Save</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

@endsection
