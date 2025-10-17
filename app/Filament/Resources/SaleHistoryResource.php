<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SaleHistoryResource\Pages;
use App\Models\SaleHistory;
use App\Models\Product;
use App\Models\WarehouseLocation;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Tables\Filters\Filter;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;

class SaleHistoryResource extends Resource
{
    protected static ?string $model = SaleHistory::class;

    protected static ?string $navigationIcon = 'heroicon-o-currency-dollar';
    protected static ?string $navigationLabel = 'Historial de Ventas';
    protected static ?string $pluralModelLabel = 'Historial de Ventas';
    protected static ?string $modelLabel = 'Venta';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('sku')
                    ->label('Producto (SKU)')
                    ->options(Product::pluck('sku', 'sku'))
                    ->searchable()
                    ->required(),

                Forms\Components\Select::make('warehouse_location_id')
                    ->label('Almacén')
                    ->options(WarehouseLocation::all()->pluck('aisle', 'id'))
                    ->searchable()
                    ->required(),

                Forms\Components\DatePicker::make('fecha_venta')
                    ->label('Fecha de venta')
                    ->required(),

                Forms\Components\TextInput::make('cantidad_venta')
                    ->label('Cantidad vendida')
                    ->numeric()
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('sku')
                    ->label('SKU')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('product.name')
                    ->label('Producto')
                    ->default('-')
                    ->searchable(),

                TextColumn::make('warehouseLocation.aisle')
                    ->label('Almacén'),

                TextColumn::make('cantidad_venta')
                    ->label('Cantidad'),

                TextColumn::make('product.gtin')
                    ->label('GTIN')
                    ->default('-')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('product.proveedor')
                    ->label('Proveedor')
                    ->default('-')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('fecha_venta')
                    ->label('Fecha de venta')
                    ->date('d/m/Y'),
            ])
            ->filters([
                SelectFilter::make('warehouse_location_id')
                    ->label('Filtrar por almacén')
                    ->options(WarehouseLocation::pluck('aisle', 'id')),

                Filter::make('fecha_venta')
                    ->form([
                        Forms\Components\DatePicker::make('desde')->label('Desde'),
                        Forms\Components\DatePicker::make('hasta')->label('Hasta'),
                    ])
                    ->query(function ($query, array $data) {
                        return $query
                            ->when($data['desde'] ?? null, fn($q, $date) => $q->whereDate('fecha_venta', '>=', $date))
                            ->when($data['hasta'] ?? null, fn($q, $date) => $q->whereDate('fecha_venta', '<=', $date));
                    }),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
            ])
            ->headerActions([
                Tables\Actions\Action::make('ver_resumen')
                    ->label('📊 Ver resumen de ventas')
                    ->color('info')
                    ->url(static::getUrl('resumen')),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSaleHistories::route('/'),
            'create' => Pages\CreateSaleHistory::route('/create'),
            'edit' => Pages\EditSaleHistory::route('/{record}/edit'),
            'resumen' => Pages\ResumenVentas::route('/resumen'),
        ];
    }
}
