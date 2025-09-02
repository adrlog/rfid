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
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Storage;

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
                Forms\Components\Tabs::make('Product Details')
                    ->tabs([
                        Forms\Components\Tabs\Tab::make('Basic Information')
                            ->schema([
                                Forms\Components\TextInput::make('name')
                                    ->required()
                                    ->maxLength(255)
                                    ->columnSpanFull(),
                                    
                                Forms\Components\TextInput::make('sku')
                                    ->label('SKU')
                                    ->maxLength(255)
                                    ->required(),
                                    
                                Forms\Components\Textarea::make('description')
                                    ->columnSpanFull(),
                                    
                                Forms\Components\Select::make('type')
                                    ->options([
                                        'simple' => 'Simple',
                                        'variable' => 'Variable',
                                        'grouped' => 'Grouped',
                                        'external' => 'External',
                                    ])
                                    ->default('simple'),
                                    
                                Forms\Components\Toggle::make('published')
                                    ->default(true)
                                    ->inline(false),
                                    
                                Forms\Components\Select::make('visibility_in_catalog')
                                    ->options([
                                        'visible' => 'Visible',
                                        'catalog' => 'Catalog Only',
                                        'search' => 'Search Only',
                                        'hidden' => 'Hidden',
                                    ])
                                    ->default('visible'),
                            ])->columns(2),
                            
                        Forms\Components\Tabs\Tab::make('Pricing')
                            ->schema([
                                Forms\Components\TextInput::make('origen_price')
                                    ->label('Origin Price')
                                    ->prefix('€'),
                                    
                                Forms\Components\TextInput::make('transporte')
                                    ->label('Transport Cost')
                                    ->prefix('€'),
                                    
                                Forms\Components\TextInput::make('cost_price')
                                    ->label('Cost Price')
                                    ->prefix('€'),
                                    
                                Forms\Components\TextInput::make('minimum_price')
                                    ->label('Minimum Price')
                                    ->prefix('€'),
                                    
                                Forms\Components\TextInput::make('regular_price')
                                    ->label('Regular Price')
                                    ->prefix('€'),
                                    
                                Forms\Components\TextInput::make('beneficio_web')
                                    ->label('Web Profit')
                                    ->prefix('€'),
                                    
                                Forms\Components\TextInput::make('beneficio_glovo')
                                    ->label('Glovo Profit')
                                    ->prefix('€'),
                            ])->columns(2),
                            
                        Forms\Components\Tabs\Tab::make('Inventory & Shipping')
                            ->schema([
                                Forms\Components\TextInput::make('stock')
                                    ->default(0),
                                    
                                Forms\Components\Select::make('warehouse_location_id')
                                    ->relationship('warehouseLocation', 'aisle')
                                    ->searchable()
                                    ->preload(),
                                    
                                Forms\Components\TextInput::make('item_size')
                                    ->label('Size'),
                                    
                                Forms\Components\TextInput::make('gtin')
                                    ->label('GTIN (Barcode)'),
                            ])->columns(2),
                            
                        Forms\Components\Tabs\Tab::make('Categories & Attributes')
                            ->schema([
                                Forms\Components\TextInput::make('categories')
                                    ->columnSpanFull(),
                                    
                                Forms\Components\TextInput::make('supercategories')
                                    ->label('Super Categories')
                                    ->columnSpanFull(),
                                    
                                Forms\Components\Select::make('brand_id')
                                    ->relationship('brand', 'name')
                                    ->searchable()
                                    ->preload()
                                    ->createOptionForm([
                                        Forms\Components\TextInput::make('name')
                                            ->required(),
                                    ]),
                                    
                                Forms\Components\Select::make('collection')
                                    ->options([
                                        'spring' => 'Spring',
                                        'summer' => 'Summer',
                                        'fall' => 'Fall',
                                        'winter' => 'Winter',
                                    ]),
                                    
                                Forms\Components\TextInput::make('color'),
                                
                                Forms\Components\TextInput::make('variant_attribute_1')
                                    ->label('Variant Attribute'),
                                    
                                Forms\Components\TextInput::make('publico_objetivo')
                                    ->label('Target Audience'),
                            ])->columns(2),
                            
                        Forms\Components\Tabs\Tab::make('Media')
                            ->schema([
                                
                                Forms\Components\Group::make([
                                    Forms\Components\Textarea::make('images')
                                        ->label('Image URLs (comma-separated)')
                                        ->helperText('Enter image URLs separated by commas')
                                        ->columnSpanFull()
                                        ->default(function ($record) {
                                            // Pre-fill with existing URLs when editing
                                            if ($record && $record->images) {
                                                // Handle both single string and comma-separated strings
                                                if (is_array($record->images)) {
                                                    return implode(', ', $record->images);
                                                } else if (strpos($record->images, ',') !== false) {
                                                    // Already comma-separated, return as is
                                                    return $record->images;
                                                } else {
                                                    // Single image, return as is
                                                    return $record->images;
                                                }
                                            }
                                            return '';
                                        })
                                        ->live(debounce: 500)
                                        ->afterStateUpdated(function ($state, Forms\Set $set) {
                                            // Handle both single URL and comma-separated URLs
                                            if (strpos($state, ',') !== false) {
                                                $urls = array_filter(
                                                    array_map('trim', explode(',', $state)),
                                                    function($url) {
                                                        return !empty($url);
                                                    }
                                                );
                                            } else {
                                                $urls = !empty(trim($state)) ? [trim($state)] : [];
                                            }
                                            $set('_additional_images_preview', $urls);
                                        }),
                                        
                                    Forms\Components\FileUpload::make('images_upload')
                                        ->label('Or Upload Additional Images')
                                        ->multiple()
                                        ->image()
                                        ->directory('products/gallery')
                                        ->visibility('public')
                                        ->preserveFilenames()
                                        ->maxSize(2048)
                                        ->columnSpanFull()
                                        ->dehydrated(false)
                                        ->live()
                                        ->afterStateUpdated(function ($state, Forms\Set $set) {
                                            $previews = [];
                                            if ($state) {
                                                foreach ($state as $file) {
                                                    $previews[] = $file->temporaryUrl();
                                                }
                                            }
                                            $set('_additional_images_preview', $previews);
                                        }),
                                    
                                    // Horizontal Scrolling Preview Component
                                    Forms\Components\ViewField::make('_additional_images_preview')
                                        ->view('filament.forms.components.horizontal-image-preview')
                                        ->label('Additional Images Preview')
                                        ->default(function ($record) {
                                            // Initialize with existing images when editing
                                            if ($record && $record->images) {
                                                // Handle both single string and comma-separated strings
                                                if (is_array($record->images)) {
                                                    return $record->images;
                                                } else if (strpos($record->images, ',') !== false) {
                                                    // Comma-separated string
                                                    return array_filter(array_map('trim', explode(',', $record->images)));
                                                } else {
                                                    // Single image string
                                                    return [$record->images];
                                                }
                                            }
                                            return [];
                                        })
                                        ->columnSpanFull(),
                                ]),
                            ]),
                            
                        Forms\Components\Tabs\Tab::make('SEO')
                            ->schema([
                                Forms\Components\TextInput::make('meta_title')
                                    ->columnSpanFull(),
                                    
                                Forms\Components\Textarea::make('meta_description')
                                    ->columnSpanFull(),
                            ]),
                            
                        Forms\Components\Tabs\Tab::make('Advanced')
                            ->schema([
                                Forms\Components\TextInput::make('rfid_code')
                                    ->label('RFID Code'),
                                    
                                Forms\Components\Select::make('supplier_id')
                                    ->relationship('supplier', 'name')
                                    ->searchable()
                                    ->preload()
                                    ->createOptionForm([
                                        Forms\Components\TextInput::make('name')
                                            ->required(),
                                        Forms\Components\TextInput::make('contact_email'),
                                    ]),
                                    
                                Forms\Components\TextInput::make('marca')
                                    ->label('Brand (Legacy)'),
                                    
                                Forms\Components\TextInput::make('proveedor')
                                    ->label('Supplier (Legacy)'),
                                    
                                Forms\Components\Textarea::make('funciones')
                                    ->label('Features'),
                                    
                                Forms\Components\Select::make('condicion')
                                    ->label('Condition')
                                    ->options([
                                        'new' => 'New',
                                        'used' => 'Used',
                                        'refurbished' => 'Refurbished',
                                    ]),
                                    
                                Forms\Components\Textarea::make('informacion_adicional')
                                    ->label('Additional Information')
                                    ->columnSpanFull(),
                            ])->columns(2),
                    ])->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                // Add Image Column for better visual
                Tables\Columns\ImageColumn::make('images')
                    ->label('Image')
                    ->getStateUsing(function ($record) {
                        if ($record->images) {
                            $imagesArray = array_filter(array_map('trim', explode(',', $record->images)));
                            $firstImage = !empty($imagesArray) ? trim($imagesArray[0]) : null;
                            if ($firstImage && filter_var($firstImage, FILTER_VALIDATE_URL)) {
                                return $firstImage;
                            }
                            
                            if ($firstImage) {
                                return Storage::url($firstImage);
                            }
                        }
                        
                        // Fallback to default avatar if no images
                        return 'https://ui-avatars.com/api/?name=' . urlencode($record->name) . '&color=FFFFFF&background=111827';
                    })
                    ->circular()
                    ->toggleable(),
                
                Tables\Columns\TextColumn::make('name')
                    ->searchable()
                    ->sortable()
                    ->toggleable()
                    ->limit(50)
                    ->tooltip(fn ($record) => $record->name),
                
                Tables\Columns\TextColumn::make('sku')
                    ->searchable()
                    ->sortable(query: function (Builder $query, string $direction): Builder {
                        return $query->orderByRaw('CAST(sku AS UNSIGNED) ' . $direction);
                    })
                    ->toggleable(),
                
                Tables\Columns\TextColumn::make('categories')
                    ->badge()
                    ->toggleable()
                    ->limit(50)
                    ->tooltip(fn ($record) => $record->categories),
                
                Tables\Columns\TextColumn::make('supercategories')
                    ->badge()
                    ->toggleable()
                    ->limit(50)
                    ->tooltip(fn ($record) => $record->supercategories),
                
                Tables\Columns\TextColumn::make('origen_price')
                    ->money()
                    ->sortable()
                    ->toggleable(),
                
                Tables\Columns\TextColumn::make('transporte')
                    ->money()
                    ->sortable()
                    ->toggleable(),
                
                Tables\Columns\TextColumn::make('cost_price')
                    ->money()
                    ->sortable()
                    ->toggleable(),
                
                Tables\Columns\TextColumn::make('minimum_price')
                    ->money()
                    ->sortable()
                    ->toggleable(),
                
                Tables\Columns\TextColumn::make('regular_price')
                    ->money()
                    ->sortable()
                    ->toggleable(),
                
                Tables\Columns\TextColumn::make('beneficio_web')
                    ->money()
                    ->sortable()
                    ->toggleable(),
                
                Tables\Columns\TextColumn::make('beneficio_glovo')
                    ->money()
                    ->sortable()
                    ->toggleable(),

                Tables\Columns\TextColumn::make('type')
                    ->sortable()
                    ->toggleable(),
                
                Tables\Columns\IconColumn::make('published')
                    ->boolean()
                    ->toggleable(),
                
                Tables\Columns\TextColumn::make('visibility_in_catalog')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->visibility_in_catalog),

                Tables\Columns\TextColumn::make('description')
                    ->limit(50)
                    ->toggleable()
                    ->tooltip(fn ($record) => $record->description),
                
                Tables\Columns\TextColumn::make('meta_title')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->meta_title),
                
                Tables\Columns\TextColumn::make('meta_description')
                    ->toggleable()
                    ->limit(50)
                    ->tooltip(fn ($record) => $record->meta_description),
                
                Tables\Columns\TextColumn::make('stock')
                    ->sortable()
                    ->color(fn (int $state) => $state < 5 ? 'danger' : 'success')
                    ->toggleable(),

                Tables\Columns\TextColumn::make('gtin')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->gtin),
                
                Tables\Columns\TextColumn::make('collection')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->collection),
                
                Tables\Columns\TextColumn::make('variant_attribute_1')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->variant_attribute_1),
                
                Tables\Columns\TextColumn::make('color')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->color),
                
                Tables\Columns\TextColumn::make('marca')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->marca),
                
                Tables\Columns\TextColumn::make('item_size')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->item_size),
                
                Tables\Columns\TextColumn::make('publico_objetivo')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->publico_objetivo),
                
                Tables\Columns\TextColumn::make('funciones')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->funciones),
                
                Tables\Columns\TextColumn::make('proveedor')
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->proveedor),
                
                Tables\Columns\TextColumn::make('condicion')
                    ->toggleable()
                    ->limit(50)
                    ->tooltip(fn ($record) => $record->condicion),
                
                Tables\Columns\TextColumn::make('informacion_adicional')
                    ->limit(50)
                    ->toggleable()
                    ->tooltip(fn ($record) => $record->informacion_adicional),
                
                Tables\Columns\TextColumn::make('rfid_code')
                    ->label('RFID')
                    ->searchable()
                    ->copyable()
                    ->toggleable()
                    ->limit(30)
                    ->tooltip(fn ($record) => $record->rfid_code),

                Tables\Columns\TextColumn::make('brand.name')
                    ->label('Brand')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->limit(20)
                    ->tooltip(fn ($record) => $record->brand?->name),
                
                Tables\Columns\TextColumn::make('supplier.name')
                    ->label('Supplier')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->limit(20)
                    ->tooltip(fn ($record) => $record->supplier?->name),
                
                Tables\Columns\TextColumn::make('warehouseLocation.aisle')
                    ->label('Warehouse Location')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->limit(20)
                    ->tooltip(fn ($record) => $record->warehouseLocation?->aisle),
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
                Tables\Actions\EditAction::make(),
                Tables\Actions\ViewAction::make(),
                Tables\Actions\DeleteAction::make(),
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
            ])
            ->defaultSort('created_at', 'desc');
    }

    public static function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                // Main Image
                Infolists\Components\ImageEntry::make('product_picture')
                    ->hiddenLabel()
                    ->defaultImageUrl(fn ($record) => 'https://ui-avatars.com/api/?name=' . urlencode($record->name))
                    ->columnSpanFull()
                    ->alignment('center')
                    ->extraImgAttributes(['class' => 'max-h-64 mx-auto']),
                
                // Basic Information Section
                Infolists\Components\Section::make('Basic Information')
                    ->columns(3)
                    ->schema([
                        Infolists\Components\TextEntry::make('name')->label('Product Name'),
                        Infolists\Components\TextEntry::make('sku')->label('SKU'),
                        Infolists\Components\TextEntry::make('type')->badge()
                            ->color(fn (string $state): string => match ($state) {
                                'simple' => 'success',
                                'variable' => 'warning',
                                'grouped' => 'info',
                                'external' => 'primary',
                                default => 'gray',
                            }),
                        Infolists\Components\TextEntry::make('description')->columnSpanFull()->html(),
                        Infolists\Components\TextEntry::make('published')
                            ->badge()
                            ->color(fn (bool $state): string => $state ? 'success' : 'danger')
                            ->formatStateUsing(fn (bool $state): string => $state ? 'Published' : 'Unpublished'),
                        Infolists\Components\TextEntry::make('visibility_in_catalog')
                            ->badge()
                            ->color(fn (string $state): string => match ($state) {
                                'visible' => 'success',
                                'catalog' => 'warning',
                                'search' => 'info',
                                'hidden' => 'danger',
                                default => 'gray',
                            }),
                    ]),
                
                // Pricing Section
                Infolists\Components\Section::make('Pricing')
                    ->columns(4)
                    ->schema([
                        Infolists\Components\TextEntry::make('origen_price')->label('Origin Price')->money('EUR'),
                        Infolists\Components\TextEntry::make('transporte')->label('Transport Cost')->money('EUR'),
                        Infolists\Components\TextEntry::make('cost_price')->label('Cost Price')->money('EUR'),
                        Infolists\Components\TextEntry::make('minimum_price')->label('Minimum Price')->money('EUR'),
                        Infolists\Components\TextEntry::make('regular_price')->label('Regular Price')->money('EUR'),
                        Infolists\Components\TextEntry::make('beneficio_web')->label('Web Profit')->money('EUR'),
                        Infolists\Components\TextEntry::make('beneficio_glovo')->label('Glovo Profit')->money('EUR'),
                    ]),
                
                // Inventory & Shipping Section
                Infolists\Components\Section::make('Inventory & Shipping')
                    ->columns(3)
                    ->schema([
                        Infolists\Components\TextEntry::make('stock')
                            ->badge()
                            ->color(fn (int $state): string => $state < 5 ? 'danger' : 'success'),
                        Infolists\Components\TextEntry::make('warehouseLocation.aisle')->label('Warehouse Location'),
                        Infolists\Components\TextEntry::make('item_size')->label('Size'),
                        Infolists\Components\TextEntry::make('gtin')->label('GTIN (Barcode)'),
                    ]),
                
                // Categories & Attributes Section
                Infolists\Components\Section::make('Categories & Attributes')
                    ->columns(3)
                    ->schema([
                        Infolists\Components\TextEntry::make('categories'),
                        Infolists\Components\TextEntry::make('supercategories')->label('Super Categories'),
                        Infolists\Components\TextEntry::make('brand.name')->label('Brand'),
                        Infolists\Components\TextEntry::make('collection'),
                        Infolists\Components\TextEntry::make('color'),
                        Infolists\Components\TextEntry::make('variant_attribute_1')->label('Variant Attribute'),
                        Infolists\Components\TextEntry::make('publico_objetivo')->label('Target Audience'),
                    ]),
                
                // Media Section
                Infolists\Components\Section::make('Media')
                    ->schema([
                        Infolists\Components\TextEntry::make('images')
                            ->label('Additional Images')
                            ->columnSpanFull()
                            ->formatStateUsing(function ($state) {
                                if (empty($state)) return 'No additional images';
                                
                                // Handle both JSON arrays and comma-separated strings
                                if (is_array($state)) {
                                    $images = $state;
                                } else {
                                    // Try to decode as JSON first
                                    $decoded = json_decode($state, true);
                                    if (json_last_error() === JSON_ERROR_NONE && is_array($decoded)) {
                                        $images = $decoded;
                                    } else {
                                        // If not JSON, treat as comma-separated string
                                        $images = array_map('trim', explode(',', $state));
                                    }
                                }
                                
                                if (empty($images)) return 'No additional images';
                                
                                $html = '<div class="flex overflow-y-hidden flex-wrap gap-2">';
                                foreach ($images as $image) {
                                    $imageUrl = filter_var($image, FILTER_VALIDATE_URL) 
                                        ? $image 
                                        : (\Storage::url($image) ?? $image);
                                    $html .= '<img src="' . $imageUrl . '" class="w-20 h-auto object-cover rounded border" onerror="this.style.display=\'none\'">';
                                }
                                $html .= '</div>';
                                
                                return $html;
                            })
                            ->html(),
                    ]),
                
                // SEO Section
                Infolists\Components\Section::make('SEO Information')
                    ->columns(2)
                    ->schema([
                        Infolists\Components\TextEntry::make('meta_title')->label('Meta Title')->columnSpanFull(),
                        Infolists\Components\TextEntry::make('meta_description')->label('Meta Description')->columnSpanFull(),
                    ]),
                
                // Advanced Information Section
                Infolists\Components\Section::make('Advanced Information')
                    ->columns(3)
                    ->schema([
                        Infolists\Components\TextEntry::make('rfid_code')->label('RFID Code')->badge()->color('primary'),
                        Infolists\Components\TextEntry::make('supplier.name')->label('Supplier'),
                        Infolists\Components\TextEntry::make('marca')->label('Brand (Legacy)'),
                        Infolists\Components\TextEntry::make('proveedor')->label('Supplier (Legacy)'),
                        Infolists\Components\TextEntry::make('funciones')->label('Features')->columnSpanFull(),
                        Infolists\Components\TextEntry::make('condicion')->label('Condition')
                            ->badge()
                            ->color(fn (string $state): string => match ($state) {
                                'new' => 'success',
                                'used' => 'warning',
                                'refurbished' => 'info',
                                default => 'gray',
                            }),
                        Infolists\Components\TextEntry::make('informacion_adicional')->label('Additional Information')->columnSpanFull(),
                    ]),
                
                // Timestamps
                Infolists\Components\Section::make('System Information')
                    ->columns(2)
                    ->schema([
                        Infolists\Components\TextEntry::make('created_at')->label('Created At')->dateTime(),
                        Infolists\Components\TextEntry::make('updated_at')->label('Updated At')->dateTime(),
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
    
    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }
}
