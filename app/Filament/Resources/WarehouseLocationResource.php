<?php

namespace App\Filament\Resources;

use App\Filament\Resources\WarehouseLocationResource\Pages;
use App\Models\WarehouseLocation;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Infolists;
use Filament\Infolists\Infolist;

class WarehouseLocationResource extends Resource
{
    protected static ?string $model = WarehouseLocation::class;
    protected static ?string $navigationIcon = 'heroicon-o-map-pin';
    protected static ?string $modelLabel = 'Warehouse Location';
    protected static ?int $navigationSort = 4;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Location Info')
                    ->columns(2)
                    ->schema([
                        Forms\Components\TextInput::make('aisle')
                            ->required()
                            ->maxLength(255),

                        Forms\Components\TextInput::make('shelf')
                            ->required()
                            ->maxLength(255),

                        Forms\Components\TextInput::make('bin_number')
                            ->label('Bin Number')
                            ->maxLength(255),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('aisle')
                    ->sortable()
                    ->searchable(),

                Tables\Columns\TextColumn::make('shelf')
                    ->sortable()
                    ->searchable(),

                Tables\Columns\TextColumn::make('bin_number')
                    ->label('Bin')
                    ->sortable()
                    ->searchable()
                    ->toggleable(),
            ])
            ->filters([]) // Add filters if needed later
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
                Tables\Actions\Action::make('details')
                    ->label('Detalles')
                    ->icon('heroicon-o-eye')
                    ->color('primary')
                    ->url(fn($record) => static::getUrl('details', ['record' => $record]))
                    ->openUrlInNewTab(false),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
            ])
            ->emptyStateActions([
                Tables\Actions\CreateAction::make(),
            ]);
    }

    public static function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Infolists\Components\Section::make()
                    ->schema([
                        Infolists\Components\TextEntry::make('aisle')
                            ->tooltip(fn ($record) => 'Aisle: ' . $record->aisle),

                        Infolists\Components\TextEntry::make('shelf')
                            ->tooltip(fn ($record) => 'Shelf: ' . $record->shelf),

                        Infolists\Components\TextEntry::make('bin_number')
                            ->label('Bin')
                            ->tooltip(fn ($record) => 'Bin Number: ' . ($record->bin_number ?? 'N/A')),
                    ])
                    ->columns(2),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListWarehouseLocations::route('/'),
            'create' => Pages\CreateWarehouseLocation::route('/create'),
            'edit' => Pages\EditWarehouseLocation::route('/{record}/edit'),
            'details' => Pages\WarehouseLocationDetails::route('/{record}/details'),
        ];
    }
}
