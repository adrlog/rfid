<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class SaleHistory extends Model
{
    use HasFactory;

    protected $table = 'sales_history';

    protected $fillable = [
        'sku',
        'warehouse_location_id',
        'fecha_venta',
        'cantidad_venta',
    ];

    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class, 'sku', 'sku');
    }

    public function warehouseLocation(): BelongsTo
    {
        return $this->belongsTo(WarehouseLocation::class, 'warehouse_location_id');
    }

    public function getCantidadEnAlmacen()
    {
        $productId = $this->product?->id;

        if (! $productId) {
            return 0;
        }

        return \App\Models\Relation::where('id_producto', $productId)
            ->where('id_wherehouse', $this->warehouse_location_id)
            ->value('cantidad') ?? 0;
    }

    protected static function booted()
    {
        static::created(function (SaleHistory $sale) {
            // Actualiza la tabla Relation restando la cantidad vendida
            $productId = $sale->product?->id;

            if (! $productId) {
                return;
            }

            $relation = \App\Models\Relation::where('id_producto', $productId)
                ->where('id_wherehouse', $sale->warehouse_location_id)
                ->first();

            if ($relation) {
                $relation->cantidad = max(0, $relation->cantidad - (int) $sale->cantidad_venta);
                $relation->save();
            }
        });
    }
}
