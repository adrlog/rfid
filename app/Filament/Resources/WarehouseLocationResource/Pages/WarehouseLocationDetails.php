<?php

namespace App\Filament\Resources\WarehouseLocationResource\Pages;

use App\Filament\Resources\WarehouseLocationResource;
use Filament\Resources\Pages\ManageRelatedRecords;
use Filament\Forms;
use Filament\Tables;
use Filament\Tables\Table;
use App\Models\Product;
use App\Models\Relation;
use Filament\Notifications\Notification;
use Filament\Forms\Components\Actions\Action;

class WarehouseLocationDetails extends ManageRelatedRecords
{
    protected static string $resource = WarehouseLocationResource::class;
    protected static string $relationship = 'relations';
    protected static ?string $navigationIcon = 'heroicon-o-list-bullet';

    public static function getNavigationLabel(): string
    {
        return 'Detalles de Productos';
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('product.name')
            ->columns([
                Tables\Columns\TextColumn::make('product.name')
                    ->label('Producto')
                    ->sortable()
                    ->searchable(),

                Tables\Columns\TextColumn::make('cantidad')
                    ->label('Cantidad'),

                Tables\Columns\TextColumn::make('precio')
                    ->label('Precio (€)')
                    ->money('eur', true),
            ])
            ->headerActions([
                Tables\Actions\Action::make('addMultiple')
                    ->label('Agregar productos')
                    ->icon('heroicon-o-plus-circle')
                    ->form(function () {
                        $warehouse = $this->getOwnerRecord();

                        // 🔹 Obtener IDs de productos ya asociados a este almacén
                        $usedIds = Relation::where('id_wherehouse', $warehouse->id)
                            ->pluck('id_producto')
                            ->toArray();

                        // 🔹 Obtener productos disponibles
                        $availableProducts = Product::whereNotIn('id', $usedIds)
                            ->pluck('name', 'id')
                            ->toArray();

                        // 🔹 Si no hay productos disponibles
                        if (empty($availableProducts)) {
                            return [
                                Forms\Components\Placeholder::make('no_products')
                                    ->label('Sin productos disponibles')
                                    ->content('Todos los productos ya están asociados a este almacén.'),
                            ];
                        }

                        // 🔹 Agregar opción “Seleccionar todos”
                        $options = ['__ALL__' => '🔹 Seleccionar todos'] + $availableProducts;

                        return [
                            Forms\Components\Select::make('productos')
                                ->label('Seleccionar productos')
                                ->options($options)
                                ->multiple()
                                ->searchable()
                                ->required()
                                ->validationMessages([
                                    'required' => 'Debes seleccionar al menos un producto.',
                                ])
                                ->placeholder('Selecciona uno o varios productos')
                                ->helperText('Puedes mantener Ctrl o Shift para seleccionar varios.'),

                            Forms\Components\TextInput::make('cantidad')
                                ->numeric()
                                ->minValue(1)
                                ->default(1)
                                ->required()
                                ->validationMessages([
                                    'required' => 'La cantidad es obligatoria.',
                                    'min' => 'Debe ser al menos 1.',
                                ]),

                            Forms\Components\TextInput::make('precio')
                                ->numeric()
                                ->prefix('€')
                                ->default(0)
                                ->required()
                                ->validationMessages([
                                    'required' => 'El precio es obligatorio.',
                                ]),
                        ];
                    })
                    ->action(function (array $data) {
                        $warehouse = $this->getOwnerRecord();

                        // ⚠️ Validación: sin almacén
                        if (!$warehouse || !$warehouse->id) {
                            Notification::make()
                                ->title('Error: no hay almacén seleccionado')
                                ->body('Debes seleccionar o crear un almacén antes de agregar productos.')
                                ->danger()
                                ->send();
                            return;
                        }

                        // ⚠️ Validación: sin productos
                        if (empty($data['productos'])) {
                            Notification::make()
                                ->title('Error: no seleccionaste productos')
                                ->body('Selecciona al menos un producto antes de continuar.')
                                ->danger()
                                ->send();
                            return;
                        }

                        // 🔹 IDs ya asociados
                        $usedIds = Relation::where('id_wherehouse', $warehouse->id)
                            ->pluck('id_producto')
                            ->toArray();

                        // 🔹 Obtener productos disponibles
                        $availableIds = Product::whereNotIn('id', $usedIds)->pluck('id')->toArray();

                        // 🔹 Si seleccionó “Seleccionar todos”, usar todos los disponibles
                        $productos = in_array('__ALL__', $data['productos'])
                            ? $availableIds
                            : $data['productos'];

                        foreach ($productos as $productId) {
                            Relation::create([
                                'id_wherehouse' => $warehouse->id,
                                'id_producto' => $productId,
                                'cantidad' => $data['cantidad'],
                                'precio' => $data['precio'],
                            ]);
                        }

                        Notification::make()
                            ->title('Productos agregados correctamente')
                            ->success()
                            ->send();
                    }),
            ])
            ->actions([
                Tables\Actions\EditAction::make()
                    ->label('Editar')
                    ->icon('heroicon-o-pencil')
                    ->form([
                        Forms\Components\TextInput::make('cantidad')
                            ->label('Cantidad')
                            ->numeric()
                            ->minValue(1)
                            ->required(),

                        Forms\Components\TextInput::make('precio')
                            ->label('Precio (€)')
                            ->numeric()
                            ->prefix('€')
                            ->required(),
                    ])
                    ->successNotificationTitle('Producto actualizado correctamente'),

                Tables\Actions\DeleteAction::make()
                    ->label('Eliminar')
                    ->icon('heroicon-o-trash'),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }
}
