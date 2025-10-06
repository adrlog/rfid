<?php

namespace App\Filament\Resources\WarehouseLocationResource\Pages;

use App\Filament\Resources\WarehouseLocationResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListWarehouseLocations extends ListRecords
{
    protected static string $resource = WarehouseLocationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    protected function getTableActions(): array
    {
        return [
            // 🔹 Botón personalizado para ir a la nueva vista de detalles
            Actions\Action::make('details')
                ->label('Detalles')
                ->icon('heroicon-o-eye')
                ->color('primary')
                ->url(fn($record) => WarehouseLocationResource::getUrl('details', ['record' => $record]))
                ->openUrlInNewTab(false), // Cambia a true si prefieres abrir en otra pestaña
        ];
    }
}
