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
            $('input[name=selection_id][value=' + id + ']').attr('checked', 'checked');
        }
    </script>
@endsection

@section('content')


    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <form action="/flats" method="post" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <input type="hidden" name="category_id" value="{{ $floors->building->category_id }}">
                            <input type="hidden" name="building_id" value="{{ $floors->building_id }}">
                            <input type="hidden" name="floor_id" value="{{ $floors->id }}">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                Фото
                                                <div class="map" style="background-color: #0b2e13">
                                                    <img src="{{ $floors->photo }}" alt="building">
                                                    @if($floors->selections)
                                                        <svg
                                                                viewBox="{{ $floors->selections->first()['viewBox'] }}"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                            @foreach($floors->selections as $p)
                                                                <path d="{{ $p->svg }}" checked="false"
                                                                      class="main_svg_{{$p->id}}"
                                                                      onclick="ali({{ $p->id }})"
                                                                      id="main_svg_{{ $p->id }}"/>
                                                            @endforeach
                                                        </svg>
                                                    @endif
                                                </div>
                                                @foreach($floors->selections as $p)
                                                    <input type="radio" class="svg_{{$p->id}}"
                                                           style="visibility: visible;"
                                                           name="selection_id"
                                                           value="{{ $p->id }}">
                                                @endforeach
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group m-t-40">
                                                <label for="crm_id" class="control-label">ID CRM: </label>
                                                <input type="text" id="crm_id" class="form-control" name="crm_id"/>
                                            </div>

                                            <br>

                                            <input type="submit" id="photo" class="btn btn-primary m-t-5" value="Сохранить"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table product-overview" id="myTable">
                                <thead>
                                <tr>
                                    <th>ID CRM</th>
                                    <th>Действии</th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach($floors->flats as $building)
                                    <tr>
                                        <td><p>{{ $building->crm_id }}</p></td>
                                        <td>
                                            <a class="btn btn-primary" href="/buildings/{{ $building->id }}">Войти</a>
                                            <a class="btn btn-warning" href="/buildings/{{ $building->id }}/edit">Изменить</a>
                                            <button class="lla btn btn-danger" data-bs-toggle="modal"
                                                    data-bs-target="#delete_{{ $building->id }}"
                                                    data-whatever="@getbootstrap">
                                                Удалить
                                            </button>
                                            <div class="modal fade" id="delete_{{ $building->id }}" role="dialog"
                                                 aria-labelledby="exampleModalLabel{{ $building->id }}">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title"
                                                                id="exampleModalLabel{{ $building->id }}">
                                                                Действительно хотите удалить?
                                                            </h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form style="display: inline"
                                                                  action="/buildings/{{ $building->id }}"
                                                                  method="post">
                                                                {{ csrf_field() }}
                                                                {{ method_field('delete') }}
                                                                <button class="btn btn-danger">Удалить</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
