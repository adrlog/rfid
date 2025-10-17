<?php

namespace App\Filament\Resources\SaleHistoryResource\Pages;

use App\Filament\Resources\SaleHistoryResource;
use Filament\Resources\Pages\Page;
use App\Models\SaleHistory;
use Filament\Tables;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Forms;
use Illuminate\Database\Eloquent\Builder;
use App\Models\WarehouseLocation;

class ResumenVentas extends Page implements HasTable
{
    use InteractsWithTable;

    protected static string $resource = SaleHistoryResource::class;
    protected static string $view = 'filament.resources.sale-history.pages.resumen-ventas';
    protected static ?string $title = 'Resumen de Ventas';

    public $desde;
    public $hasta;

    public function mount(): void
    {
        $this->desde = now()->startOfMonth()->format('Y-m-d');
        $this->hasta = now()->format('Y-m-d');
    }

    protected function getTableQuery(): Builder
    {
        return SaleHistory::query()
            ->with(['product', 'warehouseLocation'])
            ->when($this->desde, fn($q) => $q->whereDate('fecha_venta', '>=', $this->desde))
            ->when($this->hasta, fn($q) => $q->whereDate('fecha_venta', '<=', $this->hasta))
            ->selectRaw('sku, warehouse_location_id, SUM(cantidad_venta) as total_vendida, MAX(id) as id')
            ->groupBy('sku', 'warehouse_location_id')
            ->orderByDesc('total_vendida');
    }

    protected function getTableColumns(): array
    {
        return [
            Tables\Columns\TextColumn::make('sku')
                ->label('SKU')
                ->sortable()
                ->searchable(),

            Tables\Columns\TextColumn::make('product.name')
                ->label('Producto')
                ->default('-')
                ->searchable(),

            Tables\Columns\TextColumn::make('warehouseLocation.aisle')
                ->label('Almacén')
                ->default('-'),

            Tables\Columns\TextColumn::make('stock_actual')
                ->label('Stock actual')
                ->getStateUsing(fn($record) => $record->getCantidadEnAlmacen()),

            Tables\Columns\TextColumn::make('product.gtin')
                ->label('GTIN')
                ->default('-')
                ->searchable(),

            Tables\Columns\TextColumn::make('product.proveedor')
                ->label('Proveedor')
                ->default('-')
                ->searchable(),

            Tables\Columns\TextColumn::make('total_vendida')
                ->label('Total Vendido')
                ->numeric()
                ->sortable()
                ->summarize(Tables\Columns\Summarizers\Sum::make()->label('Total general')),
        ];
    }

    protected function getTableFilters(): array
    {
        return [
            Tables\Filters\SelectFilter::make('warehouse_location_id')
                ->label('Filtrar por almacén')
                ->options(WarehouseLocation::pluck('aisle', 'id')),

            Tables\Filters\Filter::make('fecha_venta')
                ->form([
                    Forms\Components\DatePicker::make('desde')->label('Desde'),
                    Forms\Components\DatePicker::make('hasta')->label('Hasta'),
                ])
                ->query(function (Builder $query, array $data) {
                    return $query
                        ->when($data['desde'] ?? null, fn($q, $date) => $q->whereDate('fecha_venta', '>=', $date))
                        ->when($data['hasta'] ?? null, fn($q, $date) => $q->whereDate('fecha_venta', '<=', $date));
                }),
        ];
    }

    protected function getHeaderWidgets(): array
    {
        return [];
    }

    protected function getHeaderActions(): array
    {
        return [];
    }
}
