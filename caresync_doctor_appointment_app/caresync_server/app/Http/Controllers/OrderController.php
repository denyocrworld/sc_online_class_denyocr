<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\Http;
use App\Models\Order;
use App\Models\DoctorSchedule;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\ResponseHeaderBag;
use Illuminate\Support\Facades\File;
class OrderController extends Controller
{
    public function index(Request $request)
    {
        // $query = Order::query();
        $query = Order::with(['doctor', 'schedule.hospital']);

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

    public function createPaymentLink(Request $request)
    {
        $data = $request->all();
        $doctor_schedule_id = $data['doctor_schedule_id'];
        $schedule = DoctorSchedule::with(['doctor', 'hospital'])
            ->find($doctor_schedule_id);
        // return $schedule['consultation_fee'];

        $response = Http::withHeaders([
            'Content-Type' => 'application/json',
            'Authorization' => 'Basic U0ItTWlkLXNlcnZlci1vcEpaVkM4TGloazVwLXZHdHg2YUt5SFk6',
        ])->post('https://api.sandbox.midtrans.com/v1/payment-links', [
            'transaction_details' => [
                'order_id' => Str::uuid(),
                'gross_amount' => $schedule['consultation_fee'],
                'payment_link_id' => Str::uuid(),
            ],
            'credit_card' => [
                'secure' => true,
            ],
            'usage_limit' => 1,
            'expiry' => [
                'duration' => 1,
                'unit' => 'days',
            ],
            'item_details' => [
                [
                    'id' => $schedule['id'],
                    'name' => 'Doctor appointment',
                    'price' => $schedule['consultation_fee'],
                    'quantity' => 1,
                ],
            ],
            //TODO: Isi dengan users details
            'customer_details' => [
                'first_name' => 'John',
                'last_name' => 'Doe',
                'email' => 'john.doe@example.com',
                'phone' => '+62181000000000',
                'notes' => 'Thank you for your order. Please follow the instructions to complete payment.',
            ],
        ]);

        $responseData = $response->json();
        return response()->json([
            "data" => $responseData
        ]);
    }

    public function midtransCallback(Request $request)
    {
        // Validate the request if needed

        // Get the JSON data from the request body
        $jsonData = $request->getContent();

        // Convert the JSON data to an array
        $data = json_decode($jsonData, true);

        if ($data === null) {
            return response()->json(['error' => 'Invalid JSON'], 400);
        }

        // Define the file path where you want to save the JSON file
        $filePath = storage_path('app/json_data.json');

        // Save the JSON data to the file
        File::put($filePath, $jsonData);
        return response()->json([
            "message" => "OK"
        ]);
    }
}
