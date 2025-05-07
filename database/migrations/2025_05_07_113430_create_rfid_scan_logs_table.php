<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('rfid_scan_logs', function (Blueprint $table) {
            $table->id();
            $table->string('rfid_code'); // Scanned RFID UID
            $table->foreignId('product_id')->nullable()->constrained(); // Linked product (if exists)
            $table->string('scan_type'); // e.g., "check-in", "check-out", "inventory"
            $table->string('scanned_by');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('rfid_scan_logs');
    }
};
