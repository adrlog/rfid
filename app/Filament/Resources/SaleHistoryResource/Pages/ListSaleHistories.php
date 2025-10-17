<?php

namespace App\Filament\Resources\SaleHistoryResource\Pages;

use App\Filament\Resources\SaleHistoryResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSaleHistories extends ListRecords
{
    protected static string $resource = SaleHistoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Registrar venta'),
        ];
    }
}
