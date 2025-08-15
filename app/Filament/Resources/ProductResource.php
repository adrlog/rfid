<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductResource\Pages;
use App\Models\Product;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Infolists;
use Filament\Infolists\Infolist;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Exports\ProductExporter;
use App\Filament\Imports\ProductImporter;

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
                                Forms\Components\TextInput::make('name')
                                    ->required()
                                    ->maxLength(255),
                                Forms\Components\TextInput::make('sku')
                                    ->maxLength(255)
                                    ->unique(ignoreRecord: true),
                                Forms\Components\TextInput::make('rfid_code')
                                    ->label('RFID Tag')
                                    ->maxLength(255)
                                    ->unique(ignoreRecord: true)
                                    ->hint('Scan RFID tag to auto-fill'),
                                Forms\Components\Select::make('type')
                                    ->options([
                                        'simple' => 'Simple',
                                        'variable' => 'Variable',
                                        'bundle' => 'Bundle',
                                    ]),
                                Forms\Components\Toggle::make('published')
                                    ->label('Published')
                                    ->default(true),
                                Forms\Components\TextInput::make('visibility_in_catalog')
                                    ->maxLength(255),
                            ]),
                        Forms\Components\Section::make('Media')
                            ->columnSpan(1)
                            ->schema([
                                Forms\Components\FileUpload::make('product_picture')
                                    ->directory('products')
                                    ->disk('public')
                                    ->image()
                                    ->imageEditor(),
                            ]),
                    ]),

                Forms\Components\Section::make('Pricing')
                    ->columns(3)
                    ->schema([
                        Forms\Components\TextInput::make('origen_price')->numeric()->prefix('$'),
                        Forms\Components\TextInput::make('transporte')->numeric()->prefix('$'),
                        Forms\Components\TextInput::make('cost_price')->numeric()->prefix('$'),
                        Forms\Components\TextInput::make('minimum_price')->numeric()->prefix('$'),
                        Forms\Components\TextInput::make('regular_price')->numeric()->prefix('$'),
                        Forms\Components\TextInput::make('beneficio_web')->numeric()->prefix('$'),
                        Forms\Components\TextInput::make('beneficio_glovo')->numeric()->prefix('$'),
                    ]),

                Forms\Components\Section::make('Stock & Warehouse')
                    ->columns(3)
                    ->schema([
                        Forms\Components\TextInput::make('stock')->numeric()->default(0),
                        Forms\Components\Select::make('warehouse_location_id')
                            ->relationship('warehouseLocation', 'aisle'),
                    ]),

                Forms\Components\Section::make('Associations')
                    ->columns(3)
                    ->schema([
                        Forms\Components\Select::make('brand_id')
                            ->relationship('brand', 'name'),
                        Forms\Components\Select::make('supplier_id')
                            ->relationship('supplier', 'name'),
                    ]),

                Forms\Components\Section::make('Identifiers & Attributes')
                    ->columns(3)
                    ->schema([
                        Forms\Components\TextInput::make('gtin'),
                        Forms\Components\TextInput::make('collection'),
                        Forms\Components\TextInput::make('variant_attribute_1'),
                        Forms\Components\TextInput::make('color'),
                        Forms\Components\TextInput::make('marca'),
                        Forms\Components\TextInput::make('item_size'),
                        Forms\Components\TextInput::make('publico_objetivo'),
                        Forms\Components\TextInput::make('funciones'),
                        Forms\Components\TextInput::make('proveedor'),
                        Forms\Components\Select::make('condicion')->options([
                            'New' => 'New',
                            'Used' => 'Used',
                            'Refurbished' => 'Refurbished',
                            'Damaged' => 'Damaged'
                        ]),
                    ]),

                Forms\Components\Section::make('Descriptions & SEO')
                    ->columns(2)
                    ->schema([
                        Forms\Components\Textarea::make('description')->rows(4),
                        Forms\Components\TextInput::make('meta_title'),
                        Forms\Components\TextInput::make('meta_description'),
                        Forms\Components\TextInput::make('categories'),
                        Forms\Components\TextInput::make('supercategories'),
                        Forms\Components\Textarea::make('informacion_adicional')->rows(3),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')->searchable()->sortable()->toggleable(),
                Tables\Columns\TextColumn::make('sku')->searchable()->sortable()->toggleable(),
                
                Tables\Columns\TextColumn::make('origen_price')->money()->sortable()->toggleable(),
                Tables\Columns\TextColumn::make('transporte')->money()->sortable()->toggleable(),
                Tables\Columns\TextColumn::make('cost_price')->money()->sortable()->toggleable(),
                Tables\Columns\TextColumn::make('minimum_price')->money()->sortable()->toggleable(),
                Tables\Columns\TextColumn::make('regular_price')->money()->sortable()->toggleable(),
                Tables\Columns\TextColumn::make('beneficio_web')->money()->sortable()->toggleable(),
                Tables\Columns\TextColumn::make('beneficio_glovo')->money()->sortable()->toggleable(),

                Tables\Columns\TextColumn::make('type')->sortable()->toggleable(),
                Tables\Columns\IconColumn::make('published')->boolean()->toggleable(),
                Tables\Columns\TextColumn::make('visibility_in_catalog')->toggleable(),

                Tables\Columns\TextColumn::make('description')->limit(30)->toggleable(),
                Tables\Columns\TextColumn::make('meta_title')->toggleable(),
                Tables\Columns\TextColumn::make('meta_description')->toggleable(),

                Tables\Columns\TextColumn::make('categories')->badge()->toggleable(),
                Tables\Columns\TextColumn::make('supercategories')->badge()->toggleable(),

                Tables\Columns\TextColumn::make('images')->toggleable(),
                Tables\Columns\TextColumn::make('stock')
                    ->sortable()
                    ->color(fn (int $state) => $state < 5 ? 'danger' : 'success')
                    ->toggleable(),

                Tables\Columns\TextColumn::make('gtin')->toggleable(),
                Tables\Columns\TextColumn::make('collection')->toggleable(),
                Tables\Columns\TextColumn::make('variant_attribute_1')->toggleable(),
                Tables\Columns\TextColumn::make('color')->toggleable(),
                Tables\Columns\TextColumn::make('marca')->toggleable(),
                Tables\Columns\TextColumn::make('item_size')->toggleable(),
                Tables\Columns\TextColumn::make('publico_objetivo')->toggleable(),
                Tables\Columns\TextColumn::make('funciones')->toggleable(),
                Tables\Columns\TextColumn::make('proveedor')->toggleable(),
                Tables\Columns\TextColumn::make('condicion')->toggleable(),
                Tables\Columns\TextColumn::make('informacion_adicional')->limit(30)->toggleable(),
                Tables\Columns\TextColumn::make('rfid_code')->label('RFID')->searchable()->copyable()->toggleable(),

                Tables\Columns\TextColumn::make('brand.name')->label('Brand')->sortable()->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('supplier.name')->label('Supplier')->sortable()->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('warehouseLocation.aisle')->label('Warehouse Location')->sortable()->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('categories')
                    ->label('Category')
                    ->options(fn () => \App\Models\Product::query()
                        ->select('categories')
                        ->whereNotNull('categories')
                        ->distinct()
                        ->pluck('categories', 'categories')
                        ->toArray()
                    ),

                Tables\Filters\SelectFilter::make('supercategories')
                    ->label('Super Category')
                    ->options(fn () => \App\Models\Product::query()
                        ->select('supercategories')
                        ->whereNotNull('supercategories')
                        ->distinct()
                        ->pluck('supercategories', 'supercategories')
                        ->toArray()
                    ),
                Tables\Filters\SelectFilter::make('condicion')
                    ->options([
                        'New' => 'New',
                        'Used' => 'Used',
                        'Refurbished' => 'Refurbished',
                        'Damaged' => 'Damaged'
                    ]),
                Tables\Filters\TernaryFilter::make('published')->label('Published'),
                Tables\Filters\Filter::make('stock_range')
                    ->form([
                        Forms\Components\TextInput::make('min_stock')->numeric()->placeholder('Min stock'),
                        Forms\Components\TextInput::make('max_stock')->numeric()->placeholder('Max stock'),
                    ])
                    ->query(fn (Builder $query, array $data) => 
                        $query
                            ->when($data['min_stock'], fn ($q) => $q->where('stock', '>=', $data['min_stock']))
                            ->when($data['max_stock'], fn ($q) => $q->where('stock', '<=', $data['max_stock']))
                    ),
                Tables\Filters\Filter::make('price_range')
                    ->form([
                        Forms\Components\TextInput::make('min_price')->numeric()->placeholder('Min price'),
                        Forms\Components\TextInput::make('max_price')->numeric()->placeholder('Max price'),
                    ])
                    ->query(fn (Builder $query, array $data) => 
                        $query
                            ->when($data['min_price'], fn ($q) => $q->where('regular_price', '>=', $data['min_price']))
                            ->when($data['max_price'], fn ($q) => $q->where('regular_price', '<=', $data['max_price']))
                    ),
                Tables\Filters\SelectFilter::make('brand')->relationship('brand', 'name'),
                Tables\Filters\SelectFilter::make('supplier')->relationship('supplier', 'name'),
                Tables\Filters\SelectFilter::make('warehouse_location_id')->relationship('warehouseLocation', 'aisle'),
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
                    ->exporter(ProductExporter::class),
            ])
            ->headerActions([
                Tables\Actions\ImportAction::make()->importer(ProductImporter::class)
            ]);
    }

    public static function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Infolists\Components\ImageEntry::make('product_picture')
                    ->hiddenLabel()
                    ->defaultImageUrl(fn ($record) => 'https://ui-avatars.com/api/?name=' . urlencode($record->name))
                    ->columnSpanFull()
                    ->alignment('center'),

                Infolists\Components\Section::make('Details')
                    ->columns(3)
                    ->schema([
                        Infolists\Components\TextEntry::make('name'),
                        Infolists\Components\TextEntry::make('sku'),
                        Infolists\Components\TextEntry::make('rfid_code')->badge()->color('primary'),
                        Infolists\Components\TextEntry::make('stock')->badge()
                            ->color(fn (int $state) => $state < 5 ? 'danger' : 'success'),
                        Infolists\Components\TextEntry::make('regular_price')->money(),
                        Infolists\Components\TextEntry::make('brand.name')->label('Brand'),
                        Infolists\Components\TextEntry::make('supplier.name')->label('Supplier'),
                        Infolists\Components\TextEntry::make('condicion')->label('Condition'),
                    ]),
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
