<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RestaurantInfo;
use App\Models\MemberNotes;

class BlogController extends Controller
{
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

        // return response()->json([
        //                         'title' => $title,
        //                         'photo' => $photo,
        //                         'restaurantName' => $restaurantName,
        //                         'averageCost' => $averageCost,
        //                         'eatTime' => $eatTime,
        //                         'content' => $content,
    // ]);
        $restaurant = RestaurantInfo::where('restaurant_name', $restaurantName)->first();

        // return response()->json($restaurant->id);
        if ($restaurant) {
            // try {
            //     $memberNote = MemberNotes::create([
            //         'm_id' => $mId,
            //         'r_id' => $restaurant->id,
            //         'title' => $title,
            //         'main_photo' => $photo,
            //         'per_cost' => $averageCost,
            //         'content' => $content,
            //         'visited_date' => $eatTime
            //     ]);
    
            //     return response()->json($memberNote);
            // } catch (\Exception $e) {
            //     return response()->json(['message' => $e->getMessage()]);
            // }

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
                return response()->json(['memberNote' => 'ok']);
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
