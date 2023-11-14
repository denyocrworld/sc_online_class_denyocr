<?php

namespace App\Http\Controllers;

use App\Models\DoctorSchedule;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

class DoctorScheduleController extends Controller
{
    public function index(Request $request)
    {
        $query = DoctorSchedule::query();

        // Filter data jika ada parameter 'sort_by' dan 'sort_type'
        if ($request->has('sort_by') && $request->has('sort_type')) {
            $sortField = $request->input('sort_by');
            $sortType = $request->input('sort_type');
            $query->orderBy($sortField, $sortType);
        }

        // Pagination
        $limit = $request->input('limit', 10); // Jumlah data per halaman, default 10
        $page = $request->input('page', 1); // Halaman yang sedang dilihat, default 1

        $schedules = $query->paginate($limit, ['*'], 'page', $page);

        return response()->json($schedules, Response::HTTP_OK);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            // Definisi validasi data inputan di sini
        ]);

        $schedule = DoctorSchedule::create($request->all());
        return response()->json(['data' => $schedule], Response::HTTP_CREATED);
    }

    public function show(DoctorSchedule $schedule)
    {
        return response()->json(['data' => $schedule], Response::HTTP_OK);
    }

    public function update(Request $request, DoctorSchedule $schedule)
    {
        $this->validate($request, [
            // Definisi validasi data inputan di sini
        ]);

        $schedule->update($request->all());
        return response()->json(['data' => $schedule], Response::HTTP_OK);
    }

    public function destroy(DoctorSchedule $schedule)
    {
        $schedule->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
