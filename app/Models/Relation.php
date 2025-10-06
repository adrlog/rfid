<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Relation extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_producto',
        'id_wherehouse',
        'cantidad',
        'precio',
    ];

    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class, 'id_producto');
    }

    public function warehouse(): BelongsTo
    {
        return $this->belongsTo(WarehouseLocation::class, 'id_wherehouse');
    }
}
