<?php

namespace App\Http\Controllers;

use App\Models\Doctor;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class DoctorController extends Controller
{
    public function index(Request $request)
    {
        $query = Doctor::with(['doctorSchedules.hospital', 'specialization']);


        if ($request->has('search')) {
            $search = $request->input('search');
            $query->where("doctor_name", 'like', "%$search%");
        }

        // Filter data jika ada parameter 'sort_by' dan 'sort_type'
        if ($request->has('sort_by') && $request->has('sort_type')) {
            $sortField = $request->input('sort_by');
            $sortType = $request->input('sort_type');
            $query->orderBy($sortField, $sortType);
        }

        // Pagination
        $limit = $request->input('limit', 10); // Jumlah data per halaman, default 10
        $page = $request->input('page', 1); // Halaman yang sedang dilihat, default 1

        $doctors = $query->paginate($limit, ['*'], 'page', $page);

        return response()->json($doctors, Response::HTTP_OK);
    }


    public function store(Request $request)
    {
        $this->validate($request, [
            // Definisi validasi data inputan di sini
        ]);

        $doctor = Doctor::create($request->all());
        return response()->json(['data' => $doctor], Response::HTTP_CREATED);
    }

    public function show(Doctor $doctor)
    {
        return response()->json(['data' => $doctor], Response::HTTP_OK);
    }

    public function update(Request $request, Doctor $doctor)
    {
        $this->validate($request, [
            // Definisi validasi data inputan di sini
        ]);

        $doctor->update($request->all());
        return response()->json(['data' => $doctor], Response::HTTP_OK);
    }

    public function destroy(Doctor $doctor)
    {
        $doctor->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
