<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RfidScanLogResource\Pages;
use App\Models\RfidScanLog;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Infolists;
use Filament\Infolists\Infolist;

class RfidScanLogResource extends Resource
{
    protected static ?string $model = RfidScanLog::class;
    protected static ?string $navigationIcon = 'heroicon-o-qr-code';
    protected static ?string $modelLabel = 'RFID Scan Log';
    protected static ?int $navigationSort = 5;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Scan Details')
                    ->columns(2)
                    ->schema([
                        Forms\Components\TextInput::make('rfid_code')
                            ->required()
                            ->maxLength(255),

                        Forms\Components\Select::make('product_id')
                            ->label('Product')
                            ->relationship('product', 'product_name')
                            ->searchable()
                            ->nullable(),

                        Forms\Components\Select::make('scan_type')
                            ->required()
                            ->options([
                                'check-in' => 'Check-In',
                                'check-out' => 'Check-Out',
                                'inventory' => 'Inventory',
                            ]),

                        Forms\Components\TextInput::make('scanned_by')
                            ->required()
                            ->maxLength(255),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('rfid_code')
                    ->label('RFID')
                    ->sortable()
                    ->searchable()
                    ->copyable(),

                Tables\Columns\TextColumn::make('product.product_name')
                    ->label('Product')
                    ->searchable()
                    ->toggleable(),

                Tables\Columns\TextColumn::make('scan_type')
                    ->badge()
                    ->color(fn (string $state) => match ($state) {
                        'check-in' => 'success',
                        'check-out' => 'danger',
                        'inventory' => 'primary',
                        default => 'gray',
                    }),

                Tables\Columns\TextColumn::make('scanned_by')
                    ->label('Scanned By')
                    ->sortable()
                    ->searchable(),

                Tables\Columns\TextColumn::make('created_at')
                    ->label('Scanned At')
                    ->dateTime()
                    ->sortable(),
            ])
            ->defaultSort('created_at', 'desc')
            ->filters([])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
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
                        Infolists\Components\TextEntry::make('rfid_code')
                            ->tooltip(fn ($record) => 'RFID: ' . $record->rfid_code),

                        Infolists\Components\TextEntry::make('product.product_name')
                            ->label('Product')
                            ->tooltip(fn ($record) => 'Linked Product: ' . ($record->product->product_name ?? 'N/A')),

                        Infolists\Components\TextEntry::make('scan_type')
                            ->badge()
                            ->tooltip(fn ($record) => 'Scan Type: ' . $record->scan_type),

                        Infolists\Components\TextEntry::make('scanned_by')
                            ->tooltip(fn ($record) => 'Scanned By: ' . $record->scanned_by),

                        Infolists\Components\TextEntry::make('created_at')
                            ->label('Scanned At')
                            ->dateTime()
                            ->tooltip(fn ($record) => 'Scanned At: ' . $record->created_at),
                    ])
                    ->columns(2),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRfidScanLogs::route('/'),
            'create' => Pages\CreateRfidScanLog::route('/create'),
            'edit' => Pages\EditRfidScanLog::route('/{record}/edit'),
        ];
    }
}
