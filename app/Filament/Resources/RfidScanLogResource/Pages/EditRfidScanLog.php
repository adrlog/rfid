<?php

namespace App\Filament\Resources\RfidScanLogResource\Pages;

use App\Filament\Resources\RfidScanLogResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRfidScanLog extends EditRecord
{
    protected static string $resource = RfidScanLogResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
