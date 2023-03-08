@extends('layouts.app')

@section('style')
    <style>
        .map {
            height: 300px;
            position: relative;
            overflow: hidden;
        }

        .map img {
            position: absolute;
            left: 50%;
            top: 50%;
            z-index: 3;
            width: 100%;
            height: auto;
            -webkit-transition: .3s all;
            transition: .3s all;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        .map svg {
            position: absolute;
            left: 50%;
            top: 50%;
            z-index: 3;
            width: 100%;
            height: auto;
            -webkit-transition: .3s all;
            transition: .3s all;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        .map path {
            opacity: 0.5;
            fill: olive;
            cursor: pointer;
            transition: 0.3s;
        }

        .map path:hover {
            opacity: 0.8;
            transition: 0.3s;
        }

        .map path[checked=true] {
            opacity: 0.8;
            transition: 0.3s;
            fill: red;
        }

        .map img {
            position: absolute;
            left: 50%;
            top: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            z-index: 2;
            width: 100%;
            height: auto;
        }

        .map input[type=radio] {
            visibility: visible;
        }

        [data-selected=true] {
            fill: red;
        }

        [data-selected=false] {
            fill: olive;
            opacity: .5;
        }
    </style>
@endsection

@section('script')
    <script>
        function ali(id) {
            $("path").attr('checked', false);
            $('input[name=svg_id][checked=checked]').attr('checked', false);
            $("#main_svg_" + id).attr('checked', true);
            $('input[name=svg_id][value=' + id + ']').attr('checked', 'checked');
        }
    </script>
@endsection

@section('content')


    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <a href="/dashboard">Назад</a>
                    </div>
                    <div class="card-body">
                        <form action="/projects" method="post" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <input type="hidden" name="data_id" value="{{ $project->id }}">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group m-t-40">
                                                <label for="name" class="control-label">Проект:</label>
                                                <input type="text" id="name" class="form-control" name="name" value="{{ $project->name }}"/>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group m-t-40">
                                                        <label for="light_photo" class="form-label">Фото (light):</label>
                                                        <input type="file" id="light_photo" class="form-control" name="light_photo" />
                                                        <img src="{{ $project->light_photo }}" style="height: 10rem;" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group m-t-40">
                                                        <label for="dark_photo" class="form-label">Фото (dark):</label>
                                                        <input type="file" id="dark_photo" class="form-control" name="dark_photo" />
                                                        <img src="{{ $project->dark_photo }}" style="height: 10rem;" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group m-t-40">
                                                <label for="svg" class="form-label">Выделения:</label>
                                                <input type="file" id="svg" class="form-control" name="svg" />
                                            </div>
                                            <br>
                                            <button type="submit" class="btn btn-primary">Сохранить</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
