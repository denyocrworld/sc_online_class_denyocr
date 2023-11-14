<?php

namespace App\Http\Controllers;

use App\Models\Hospital;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class HospitalController extends Controller
{
    public function index(Request $request)
    {
        $query = Hospital::query();

        // Filter data jika ada parameter 'sort_by' dan 'sort_type'
        if ($request->has('sort_by') && $request->has('sort_type')) {
            $sortField = $request->input('sort_by');
            $sortType = $request->input('sort_type');
            $query->orderBy($sortField, $sortType);
        }

        // Pagination
        $limit = $request->input('limit', 10); // Jumlah data per halaman, default 10
        $page = $request->input('page', 1); // Halaman yang sedang dilihat, default 1

        $hospitals = $query->paginate($limit, ['*'], 'page', $page);

        return response()->json($hospitals, Response::HTTP_OK);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'hospital_name' => 'required|string',
            'hospital_address' => 'required|string',
            'hospital_location_latitude' => 'required|numeric',
            'hospital_location_longitude' => 'required|numeric',
        ]);

        $hospital = Hospital::create($request->all());
        return response()->json(['data' => $hospital], Response::HTTP_CREATED);
    }

    public function show(Hospital $hospital)
    {
        return response()->json(['data' => $hospital], Response::HTTP_OK);
    }

    public function update(Request $request, Hospital $hospital)
    {
        $this->validate($request, [
            'hospital_name' => 'required|string',
            'hospital_address' => 'required|string',
            'hospital_location_latitude' => 'required|numeric',
            'hospital_location_longitude' => 'required|numeric',
        ]);

        $hospital->update($request->all());
        return response()->json(['data' => $hospital], Response::HTTP_OK);
    }

    public function destroy(Hospital $hospital)
    {
        $hospital->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
