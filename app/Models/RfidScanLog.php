<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class RfidScanLog extends Model
{
    use HasFactory;

    public $table = 'rfid_scan_logs';
    
    protected $fillable = [
        'rfid_code',
        'product_id',
        'scan_type',
        'scanned_by',
    ];

    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class, 'rfid_code', 'rfid_code');
    }
}