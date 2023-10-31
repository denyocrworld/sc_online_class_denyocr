<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    public function index(Request $request)
    {
        $query = Order::query();

        // Filter data jika ada parameter 'sort_by' dan 'sort_type'
        if ($request->has('sort_by') && $request->has('sort_type')) {
            $sortField = $request->input('sort_by');
            $sortType = $request->input('sort_type');
            $query->orderBy($sortField, $sortType);
        }

        // Pagination
        $limit = $request->input('limit', 10); // Jumlah data per halaman, default 10
        $page = $request->input('page', 1); // Halaman yang sedang dilihat, default 1

        $orders = $query->paginate($limit, ['*'], 'page', $page);

        return response()->json($orders, Response::HTTP_OK);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            // Definisi validasi data inputan di sini
        ]);

        $order = Order::create($request->all());
        return response()->json(['data' => $order], Response::HTTP_CREATED);
    }

    public function show(Order $order)
    {
        return response()->json(['data' => $order], Response::HTTP_OK);
    }

    public function update(Request $request, Order $order)
    {
        $this->validate($request, [
            // Definisi validasi data inputan di sini
        ]);

        $order->update($request->all());
        return response()->json(['data' => $order], Response::HTTP_OK);
    }

    public function destroy(Order $order)
    {
        $order->delete();
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
