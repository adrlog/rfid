<?php

namespace App\Filament\Resources\SaleHistoryResource\Pages;

use App\Filament\Resources\SaleHistoryResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSaleHistory extends EditRecord
{
    protected static string $resource = SaleHistoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
