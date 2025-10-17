<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\SaleHistory;
use Illuminate\Http\Request;

class SaleHistoryController extends Controller
{
    /**
     * Registrar una nueva venta.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'sku' => 'required|string|exists:products,sku',
            'warehouse_location_id' => 'required|exists:warehouse_locations,id',
            'fecha_venta' => 'nullable|date',
            'cantidad_venta' => 'required|numeric|min:1',
        ]);

        // Buscar el producto
        $product = Product::where('sku', $validated['sku'])->first();

        if (! $product) {
            return response()->json([
                'message' => 'Producto no encontrado con el SKU especificado.',
            ], 404);
        }

        // Crear registro en historial de ventas
        $sale = SaleHistory::create([
            'sku' => $product->sku,
            'product_id' => $product->id,
            'warehouse_location_id' => $validated['warehouse_location_id'],
            'fecha_venta' => $validated['fecha_venta'] ?? now(),
            'cantidad_venta' => $validated['cantidad_venta'],
        ]);

        return response()->json([
            'message' => 'Venta registrada exitosamente.',
            'data' => $sale,
        ], 201);
    }

    /**
     * Obtener listado de ventas (opcional, útil para debug o integraciones).
     */
    public function index(Request $request)
    {
        $ventas = SaleHistory::with(['product', 'warehouseLocation'])
            ->when($request->has('desde'), fn($q) => $q->whereDate('fecha_venta', '>=', $request->desde))
            ->when($request->has('hasta'), fn($q) => $q->whereDate('fecha_venta', '<=', $request->hasta))
            ->latest('fecha_venta')
            ->get();

        return response()->json($ventas);
    }
}
