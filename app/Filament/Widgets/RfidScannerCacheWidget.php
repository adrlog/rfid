<?php

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;

class RfidScannerCacheWidget extends Widget
{
    protected static string $view = 'filament.widgets.rfid-scanner-cache-widget';

    public $product;
    public $forceRefresh = 0;

    public function mount()
    {
        $this->pollProduct();
    }

    public function pollProduct()
    {
        $this->product = cache()->get('last_scanned_product');
        $this->forceRefresh++;
    }

    public function getPollingInterval(): ?int
    {
        return 1;
    }

    public function getColumnSpan(): int | string | array
    {
        return 'full';
    }
}
