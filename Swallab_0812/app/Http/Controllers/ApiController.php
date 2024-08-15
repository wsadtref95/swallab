<?php
namespace App\Http\Controllers;

// use App\Http\Controllers\Controller;
use App\Models\Members;
use App\Models\MemberNotes;
use App\Models\NotesComments;
use App\Models\NotesFavorites;
use App\Models\OrderInfos;
use App\Models\RestComments;
use App\Models\RestFavorites;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController as BaseController;

use App\Http\Resources\OrderInfosResource;

// class ApiController extends Controller
class ApiController extends BaseController
{
    public function getOrderInfos(Request $request)
    {
        $data = OrderInfos::where('id', '<', 10)->get();
        return $this->sendResponse($data, 'OrderInfos retrieved successfully.');
        // return response()->json($data);
    }

    public function getOrderInfosJson()
    {
        // $orderInfo = OrderInfos::all();
        $orderInfo = OrderInfos::where('id', '<', 10)->get();
        return $this->sendResponse(OrderInfosResource::collection($orderInfo), 'OrderInfos retrieved successfully.');
        // return response()->json($orderInfo);
    }

    public function getDetails()
    {
        $orderInfo = OrderInfos::with('OrderDetails','OrderStatuses','Members','RestInfos')->get();
        return $this->sendResponse(OrderInfosResource::collection($orderInfo), 'OrderInfos retrieved successfully.');
        // return response()->json($orderInfo);
    }
    
    // public function getData(Request $request)
    // {
    //     $type = $request->input('type');

    //     switch ($type) {
    //         case 'Orders':
    //             $data = Members::where('m_id', '<', 5)->get();
    //             break;
    //         case 'Notes':
    //             $data = MemberNotes::all();
    //             break;
    //         case 'Comments':
    //             $data = NotesComments::all();
    //             break;
    //         case 'Favorites':
    //             $data = NotesFavorites::all();
    //             break;

    //         default:
    //             return response()->json(['error' => 'Invalid type'], 400);
    //     }

    //     return response()->json($data);
    // }
}
