<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Cache;

class RfidScannerCache extends Component
{
    public $product;

    public function pollProduct()
    {
        $this->product = Cache::get('last_scanned_product');
    }

    public function render()
    {
        return view('livewire.rfid-scanner-cache');
    }
}
