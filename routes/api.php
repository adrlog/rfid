<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Log;
use App\Events\RfidProductScanned;
use App\Models\Product;
use App\Http\Controllers\Api\SaleHistoryController;

Route::get('/ventas', [SaleHistoryController::class, 'index']);
Route::post('/ventas', [SaleHistoryController::class, 'store']);

Route::post('/rfid', function (Request $request) {
    $tag = $request->input('tag');
    Log::info("RFID recibido: " . $tag);

    $product = Product::where('rfid_code', $tag)->first();

    if ($product) {
        Cache::put('last_scanned_product', $product, now()->addMinutes(5));
        return response()->json(['status' => 'found', 'product' => $product]);
    }

    return response()->json(['status' => 'not-found']);
});
