<?php

namespace App\Filament\Imports;

use App\Models\Product;
use App\Models\WarehouseLocation;
use Filament\Actions\Imports\ImportColumn;
use Filament\Actions\Imports\Importer;
use Filament\Actions\Imports\Models\Import;

class ProductImporter extends Importer
{
    protected static ?string $model = Product::class;

    public static function getColumns(): array
    {
        return [
            ImportColumn::make('name')
                ->rules(['max:255']),
            ImportColumn::make('sku')
                ->label('SKU')
                ->rules(['max:255']),
            ImportColumn::make('origen_price')
                ->rules(['max:255']),
            ImportColumn::make('transporte')
                ->rules(['max:255']),
            ImportColumn::make('cost_price')
                ->rules(['max:255']),
            ImportColumn::make('minimum_price')
                ->rules(['max:255']),
            ImportColumn::make('regular_price')
                ->rules(['max:255']),
            ImportColumn::make('beneficio_web')
                ->rules(['max:255']),
            ImportColumn::make('beneficio_glovo')
                ->rules(['max:255']),
            ImportColumn::make('type')
                ->rules(['max:255']),
            ImportColumn::make('published')
                ->requiredMapping()
                ->boolean()
                ->rules(['required', 'boolean']),
            ImportColumn::make('visibility_in_catalog')
                ->rules(['max:255']),
            ImportColumn::make('description'),
            ImportColumn::make('meta_title')
                ->rules(['max:255']),
            ImportColumn::make('meta_description')
                ->rules(['max:255']),
            ImportColumn::make('categories')
                ->rules(['max:255']),
            ImportColumn::make('supercategories')
                ->rules(['max:255']),
            ImportColumn::make('images'),
            ImportColumn::make('stock')
                ->requiredMapping()
                ->rules(['required', 'max:255']),
            ImportColumn::make('gtin')
                ->rules(['max:255']),
            ImportColumn::make('collection')
                ->rules(['max:255']),
            ImportColumn::make('variant_attribute_1')
                ->rules(['max:255']),
            ImportColumn::make('color')
                ->rules(['max:255']),
            ImportColumn::make('marca')
                ->rules(['max:255']),
            ImportColumn::make('item_size')
                ->rules(['max:255']),
            ImportColumn::make('publico_objetivo')
                ->rules(['max:255']),
            ImportColumn::make('funciones')
                ->rules(['max:255']),
            ImportColumn::make('proveedor')
                ->rules(['max:255']),
            ImportColumn::make('condicion')
                ->rules(['max:255']),
            ImportColumn::make('informacion_adicional'),
        ];
    }

    public function resolveRecord(): ?Product
    {
        return Product::firstOrNew([
            'sku' => $this->data['sku'],
        ]);
    }

    public static function getCompletedNotificationBody(Import $import): string
    {
        $body = 'Your product import has completed and ' . number_format($import->successful_rows) . ' ' . str('row')->plural($import->successful_rows) . ' imported.';

        if ($failedRowsCount = $import->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to import.';
        }

        return $body;
    }
}
