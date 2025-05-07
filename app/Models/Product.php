<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_name',
        'internal_reference',
        'ean_gtin_code',
        'rfid_code',
        'product_picture',
        'brief_description',
        'current_stock',
        'product_condition',
        'cost_price',
        'sale_price',
        'date_of_discharge',
        'last_updated_date',
        'creator_user',
        'category_id',
        'brand_id',
        'supplier_id',
        'warehouse_location_id',
    ];

    protected $casts = [
        'date_of_discharge' => 'datetime',
        'last_updated_date' => 'datetime',
        'cost_price' => 'decimal:2',
        'sale_price' => 'decimal:2',
    ];

    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }

    public function brand(): BelongsTo
    {
        return $this->belongsTo(Brand::class);
    }

    public function supplier(): BelongsTo
    {
        return $this->belongsTo(Supplier::class);
    }

    public function warehouseLocation(): BelongsTo
    {
        return $this->belongsTo(WarehouseLocation::class);
    }

    public function rfidScans(): HasMany
    {
        return $this->hasMany(RfidScanLog::class, 'rfid_code', 'rfid_code');
    }
}