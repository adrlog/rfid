<?php

namespace App\Filament\Exports;

use App\Models\Product;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class ProductExporter extends Exporter
{
    protected static ?string $model = Product::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('name'),
            ExportColumn::make('sku')
                ->label('SKU'),
            ExportColumn::make('origen_price'),
            ExportColumn::make('transporte'),
            ExportColumn::make('cost_price'),
            ExportColumn::make('minimum_price'),
            ExportColumn::make('regular_price'),
            ExportColumn::make('beneficio_web'),
            ExportColumn::make('beneficio_glovo'),
            ExportColumn::make('type'),
            ExportColumn::make('published'),
            ExportColumn::make('visibility_in_catalog'),
            ExportColumn::make('description'),
            ExportColumn::make('meta_title'),
            ExportColumn::make('meta_description'),
            ExportColumn::make('categories'),
            ExportColumn::make('supercategories'),
            ExportColumn::make('images'),
            ExportColumn::make('stock'),
            ExportColumn::make('gtin'),
            ExportColumn::make('collection'),
            ExportColumn::make('variant_attribute_1'),
            ExportColumn::make('color'),
            ExportColumn::make('marca'),
            ExportColumn::make('item_size'),
            ExportColumn::make('publico_objetivo'),
            ExportColumn::make('funciones'),
            ExportColumn::make('proveedor'),
            ExportColumn::make('condicion'),
            ExportColumn::make('informacion_adicional'),
            ExportColumn::make('created_at'),
            ExportColumn::make('updated_at'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Your product export has completed and ' . number_format($export->successful_rows) . ' ' . str('row')->plural($export->successful_rows) . ' exported.';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to export.';
        }

        return $body;
    }
}
