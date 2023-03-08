<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 12.08.2022
 * Time: 15:52
 */

namespace App\Repositories;

use App\Helpers\AppHelper;
use App\Models\Budget;
use App\Models\Financial;
use Yajra\DataTables\Facades\DataTables;

class MainRepository
{

    public function hotels()
    {
        $types = (\request()->types ? " where f.types = '" . \request()->types . "'" : '');
        $recipient = (\request()->recipient ? " and f.recipient = '" . \request()->recipient . "'" : '');
        $sql = "select e.*, p.name project, c.name currency from expenditures e join projects p on p.id = e.project_id left join currencies c on c.id = e.currency_id where is_expenditure = -1";

        $data = \DB::select(\DB::raw($sql));

        return DataTables::of($data)
            ->setRowAttr(['ondblclick' => function ($row) {
                return "editColumn({$row->id})";
            }])
            ->addColumn('recipient', function ($row) {
                return $row->recipient = 'pr' ? "Principal Recipient" : "Sub-Recipient";
            })
            ->addColumn('action', function ($row) {
                $updateButton = "<a class='btn-sm btn-warning updateUser' href='/expenditures/" . $row->id . "/edit'
                    data-bs-toggle='modal' data-bs-target='#updateModal' ><i class='fa fa-pencil'></i></button>";
                return $updateButton;
            })
            ->make(true);
    }
}
