<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductResource\Pages;
use Illuminate\Database\Eloquent\Builder;
use App\Models\Product;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Infolists;
use Filament\Infolists\Infolist;
use App\Filament\Exports\ProductExporter;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use pxlrbt\FilamentExcel\Exports\ExcelExport;
use App\Filament\Imports\ProductImporter;
use Filament\Tables\Actions\ImportAction;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;
    protected static ?string $navigationIcon = 'heroicon-o-tag';
    protected static ?string $modelLabel = 'Product';
    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Grid::make(3)
                    ->schema([
                        Forms\Components\Section::make('Basic Info')
                            ->columnSpan(2)
                            ->schema([
                                Forms\Components\TextInput::make('product_name')
                                    ->required()
                                    ->maxLength(255),
                                Forms\Components\TextInput::make('internal_reference')
                                    ->required()
                                    ->unique(ignoreRecord: true),
                                Forms\Components\TextInput::make('rfid_code')
                                    ->label('RFID Tag')
                                    ->unique(ignoreRecord: true)
                                    ->hint('Scan RFID tag to auto-fill'),
                            ]),

                        Forms\Components\Section::make('Media')
                            ->columnSpan(1)
                            ->schema([
                                Forms\Components\FileUpload::make('product_picture')
                                    ->directory('products')
                                    ->disk('direct')
                                    ->image()
                                    ->imageEditor(),
                            ]),
                    ]),

                Forms\Components\Section::make('Details')
                    ->columns(2)
                    ->schema([
                        Forms\Components\Select::make('category_id')
                            ->relationship('category', 'name')
                            ->required(),
                        Forms\Components\Select::make('brand_id')
                            ->relationship('brand', 'name')
                            ->required(),
                        Forms\Components\Select::make('supplier_id')
                            ->relationship('supplier', 'name'),
                        Forms\Components\Select::make('warehouse_location_id')
                            ->relationship('warehouseLocation', 'aisle'),
                    ]),

                Forms\Components\Section::make('Pricing & Stock')
                    ->columns(3)
                    ->schema([
                        Forms\Components\TextInput::make('cost_price')
                            ->numeric()
                            ->prefix('$'),
                        Forms\Components\TextInput::make('sale_price')
                            ->numeric()
                            ->prefix('$'),
                        Forms\Components\TextInput::make('current_stock')
                            ->numeric()
                            ->default(0),
                        Forms\Components\Select::make('product_condition')
                            ->options([
                                'New' => 'New',
                                'Used' => 'Used',
                                'Refurbished' => 'Refurbished',
                                'Damaged' => 'Damaged'
                            ])
                            ->default('New'),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('product_picture')
                    ->size(40)
                    ->defaultImageUrl(fn ($record) => 'https://ui-avatars.com/api/?name='.urlencode($record->product_name).'&color=FFFFFF&background=111827')
                    ->circular(),

                Tables\Columns\TextColumn::make('product_name')
                    ->searchable()
                    ->sortable()
                    ->description(fn (Product $record) => $record->internal_reference),

                Tables\Columns\TextColumn::make('rfid_code')
                    ->label('RFID')
                    ->searchable()
                    ->copyable()
                    ->copyMessage('RFID copied!'),

                Tables\Columns\TextColumn::make('category.name')
                    ->badge()
                    ->sortable(),

                Tables\Columns\TextColumn::make('current_stock')
                    ->numeric()
                    ->sortable()
                    ->color(fn (int $state) => $state < 5 ? 'danger' : 'success')
                    ->icon(fn (int $state) => $state < 5 ? 'heroicon-o-exclamation-triangle' : null),

                Tables\Columns\TextColumn::make('sale_price')
                    ->money()
                    ->sortable(),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('category')
                    ->relationship('category', 'name'),
                    
                Tables\Filters\SelectFilter::make('stock')
                    ->form([
                        Forms\Components\TextInput::make('min_stock')
                            ->numeric()
                            ->placeholder('Min stock'),
                        Forms\Components\TextInput::make('max_stock')
                            ->numeric()
                            ->placeholder('Max stock'),
                    ])
                    ->query(function (Builder $query, array $data): Builder { // Explicit return type
                        return $query
                            ->when($data['min_stock'], fn (Builder $q) => $q->where('current_stock', '>=', $data['min_stock']))
                            ->when($data['max_stock'], fn (Builder $q) => $q->where('current_stock', '<=', $data['max_stock']));
                    }),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
                Tables\Actions\ExportBulkAction::make()
                    ->label('Export Products')
                    ->icon('heroicon-o-arrow-down-tray')
                    ->exporter(ProductExporter::class)
            ])
            ->headerActions([
                ImportAction::make()
                    ->importer(ProductImporter::class)
            ])
            ->emptyStateActions([
                Tables\Actions\CreateAction::make(),
            ]);
    }

    public static function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Infolists\Components\ImageEntry::make('product_picture')
                    ->hiddenLabel()
                    ->defaultImageUrl(fn ($record) => 'https://ui-avatars.com/api/?name=' . urlencode($record->product_name) . '&color=FFFFFF&background=111827')
                    ->columnSpanFull()
                    ->alignment('center'), // ✅ Center the image

                Infolists\Components\Section::make()
                    ->schema([
                        Infolists\Components\TextEntry::make('product_name')
                            ->tooltip(fn ($record) => 'Product Name: ' . $record->product_name), // ✅ Tooltip

                        Infolists\Components\TextEntry::make('rfid_code')
                            ->badge()
                            ->color('primary')
                            ->tooltip(fn ($record) => 'RFID: ' . $record->rfid_code), // ✅ Tooltip

                        Infolists\Components\TextEntry::make('current_stock')
                            ->badge()
                            ->color(fn (int $state) => $state < 5 ? 'danger' : 'success')
                            ->tooltip(fn ($record) => 'Current Stock: ' . $record->current_stock), // ✅ Tooltip
                    ])
                    ->columns(3),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }
}