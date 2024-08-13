<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RestInfos;
use App\Models\MemberNotes;
use App\Models\Users;

class BlogController extends Controller
{
    function getAllNotes()
    {
        $allNotes = MemberNotes::orderBy('created_at' , 'desc')
                                ->select('id', 'title', 'main_photo', 'created_at')
                                ->first();

        return $allNotes;
    }

    function getContent($id)
    {
        $memberNote = MemberNotes::with(['members.users' => function($query){
            $query->select('id', 'avatar', 'name');
        }, 'restInfos' => function($query) {
            $query->select('id', 'user_id', 'address', 'weekday', 'weekend', 'wd_operating', 'we_operating');
        }, 'restInfos.users' => function($query) {
            $query->select('id',  'phone', 'name');
        }])
        ->find($id);
        // $memberNote = MemberNotes::with(['members.users' => function($query) {
        //     $query->select('id', 'name');
        // }])
        // ->find($id);
        return response()->json($memberNote);
    }

    function upload(Request $request)
    {
        if ($request->hasFile('upload')) {
            $file = $request->file('upload');
            $fileName = uniqid() . '_' . $file->getClientOriginalName();
            $filePath = $file->storeAs('uploads', $fileName, 'public');

            return response()->json(['uploaded' => true, 'url' => asset('storage/' . $filePath)]);
        }
        return response()->json(['uploaded' => false, 'message' => 'No file upload']);
    }

    function submit(Request $request)
    {
        // 處裡照片
        $image = $request->file('titleImage');
        $imagePath = $image->store('titleImages', 'public');
        $photo = 'http://localhost/MySwallab/public/storage/' . $imagePath;
        
        $mId = 1;

        $title = $request->title;
        $restaurantName = $request->restaurantName;
        $averageCost = $request->averageCost;
        $eatTime = $request->eatTime;
        $content = $request->editor;

        $restaurant = Users::where('name', $restaurantName)->first();

        // return response()->json($restaurant->id);
        if ($restaurant) {

            try {
                $memberNote = new MemberNotes();
                $memberNote->m_id = $mId;
                $memberNote->r_id = $restaurant->id;
                $memberNote->title = $title;
                $memberNote->main_photo = $photo;
                $memberNote->per_cost = $averageCost;
                $memberNote->content = $content;
                $memberNote->visited_date = $eatTime;
                $memberNote->save();
                return response()->json(['status' => 'ok']);
            } catch (\Exception $e) {
                return response()->json(['status' => 'fail', 'message', $e->getMessage()]);
            }


        } else {
            return response()->json([
                'error' => 'Restaurant not found'
            ], 404);
        }
    }
}
