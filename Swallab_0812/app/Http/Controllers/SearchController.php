<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{
    public function search(Request $request)
    {
        $searchType = $request->input('search_type', 'RestInfos');
        if (!in_array($searchType, ['RestInfos', 'MemberNotes'])) {
            // 預設 RestInfos ->
            $searchType = 'RestInfos';
        }

        // class 敏感 -> category
        $category = $request->input('category');
        $location = $request->input('location');
        $purpose = $request->input('purpose');

        $query = DB::table($searchType);

        // 接表
        // 先看 theicon 選誰
        if ($searchType === 'RestInfos') {
            $query->join('Users', 'Users.id', '=', 'RestInfos.user_id')
                ->join('FiltClasses', 'FiltClasses.id', '=', 'RestInfos.f_c_id')
                ->join('FiltLocations', 'FiltLocations.id', '=', 'RestInfos.f_l_id');
        // 種類
            if ($category && $category !== 'null') {
                $query->where('FiltClasses.class', $category);
            }
        // 地址
            if ($location && $location !== 'null') {
                // 方法一：模糊查詢 address 欄位
                $query->where('RestInfos.address', 'like', "%$location%");
                // 方法二：使用 FiltLocations 表
                // $query->where('FiltLocations.location', $location);
            }
        // 情境
            if ($purpose && $purpose !== 'null') {
                $query->join('SuitableFor', 'SuitableFor.r_id', '=', 'RestInfos.id')
                    ->join('FiltPurposes', 'FiltPurposes.id', '=', 'SuitableFor.f_p_id')
                    ->where('FiltPurposes.purpose', $purpose);
            }
            // 選哪些表
            $query->select('RestInfos.*', 'Users.name as user_name', 'FiltClasses.class', 'FiltLocations.location');
        } else {
            $query->join('Members', 'Members.id', '=', 'MemberNotes.m_id')
                ->join('Users', 'Users.id', '=', 'Members.user_id')
                ->join('RestInfos', 'RestInfos.id', '=', 'MemberNotes.r_id')
                ->join('FiltClasses', 'FiltClasses.id', '=', 'RestInfos.f_c_id')
                ->join('FiltLocations', 'FiltLocations.id', '=', 'RestInfos.f_l_id');

            if ($category && $category !== 'null') {
                $query->where('FiltClasses.class', $category);
            }

            if ($location && $location !== 'null') {
                // 方法一：模糊查詢 address 欄位
                $query->where('RestInfos.address', 'like', "%$location%");
                // 方法二：使用 FiltLocations 表
                // $query->where('FiltLocations.location', $location);
            }

            if ($purpose && $purpose !== 'null') {
                $query->join('SuitableFor', 'SuitableFor.r_id', '=', 'RestInfos.id')
                    ->join('FiltPurposes', 'FiltPurposes.id', '=', 'SuitableFor.f_p_id')
                    ->where('FiltPurposes.purpose', $purpose);
            }

            $query->select('MemberNotes.*', 'Users.name as user_name', 'RestInfos.address', 'FiltClasses.class', 'FiltLocations.location');
        }

        $results = $query->get();

        return response()->json($results);
    }
}