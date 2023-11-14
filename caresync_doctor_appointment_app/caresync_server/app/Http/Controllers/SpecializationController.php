<?php

namespace App\Http\Controllers;

use App\Models\Specialization;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

class SpecializationController extends Controller
{
    public function index(Request $request)
    {
        $query = Specialization::query();

        // Filter data jika ada parameter 'sort_by' dan 'sort_type'
        if ($request->has('sort_by') && $request->has('sort_type')) {
            $sortField = $request->input('sort_by');
            $sortType = $request->input('sort_type');
            $query->orderBy($sortField, $sortType);
        }

        // Pagination
        $limit = $request->input('limit', 10); // Jumlah data per halaman, default 10
        $page = $request->input('page', 1); // Halaman yang sedang dilihat, default 1

        $specializations = $query->paginate($limit, ['*'], 'page', $page);

        return response()->json($specializations, Response::HTTP_OK);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            // Definisi validasi data inputan di sini
        ]);

        $specialization = Specialization::create($request->all());
        return response()->json(['data' => $specialization], Response::HTTP_CREATED);
    }

    public function show(Specialization $specialization)
    {
        return response()->json(['data' => $specialization], Response::HTTP_OK);
    }

    public function update(Request $request, Specialization $specialization)
    {
        $this->validate($request, [
            // Definisi validasi data inputan di sini
        ]);

        $specialization->update($request->all());
        return response()->json(['data' => $specialization], Response::HTTP_OK);
    }

    public function destroy(Specialization $specialization)
    {
        $specialization->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
