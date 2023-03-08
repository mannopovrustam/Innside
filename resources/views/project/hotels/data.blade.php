@extends('layouts.app')

@section('style')

@endsection

@section('content')

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <h3 class="card-title">
                            <i class="fas fa-hotel"></i>
                            <span>Hotels</span>
                        </h3>
                        <div class="card-tools">
                            <a href="/hotels/create" class="btn btn-primary"><i class="fa fa-plus-circle"></i> Create Hotel</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($data as $key => $d)
                                <tr>
                                    <td>{{ $key+1 }}</td>
                                    <td>{{ $d->title_uz }}</td>
                                    <td>
                                        <div class="d-flex">
                                            <a href="/hotels/{{$d->id}}" class="btn btn-sm btn-default">
                                                <i class="fa fa-eye"></i> View
                                            </a>
                                            <a href="/hotels/{{$d->id}}/edit" class="btn btn-sm btn-default">
                                                <i class="fa fa-pen"></i> Edit
                                            </a>
                                            <form action="/hotels/{{$d->id}}" method="POST">
                                                @csrf
                                                @method('DELETE')

                                                <button type="submit" class="btn btn-sm btn-danger">
                                                    <i class="fa fa-trash-o"></i> Delete
                                                </button>
                                            </form>
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

@endsection

@section('script')

    <!-- Required datatable js -->
    <script src="/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <!-- Buttons examples -->
    <script src="/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="/assets/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>

    <script src="/assets/js/pages/datatables.init.js"></script>

    <script type="text/javascript">
        $(function () {
            $('#datatable').DataTable();
        });

        /*
                function editColumn(id) {
                    window.location.href = '/budgets/' + id + '/edit';
                }
        */

        // document.body.style.zoom = .8;
    </script>

@endsection
