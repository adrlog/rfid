<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class WarehouseLocation extends Model
{
    use HasFactory;

    public $table = 'warehouse_locations';

    protected $fillable = [
        'aisle',
        'shelf',
        'bin_number',
    ];

    public function products(): HasMany
    {
        return $this->hasMany(Product::class);
    }

    public function relations(): HasMany
    {
        return $this->hasMany(Relation::class, 'id_wherehouse');
    }
}