<?php

namespace App\Filament\Resources\ProductResource\Pages;

use App\Filament\Resources\ProductResource;
use App\Models\Product;
use App\Models\WarehouseLocation;
use App\Models\Relation;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Illuminate\Support\Facades\DB;
use Filament\Notifications\Notification;

class ListProducts extends ListRecords
{
    protected static string $resource = ProductResource::class;

    public $newProducts = [];
    public $selectedProducts = [];       // IDs seleccionados
    public $selectedWarehouses = [];     // IDs de almacenes
    public $searchTerm = '';
    public $selectAllFiltered = false;
    public $productData = [];

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),

            Actions\Action::make('newProductsModal')
                ->label('Productos Nuevos')
                ->modalHeading('Productos recién importados')
                ->modalSubheading('Selecciona productos y almacenes')
                ->modalWidth('6xl')
                ->modalContent(function () {
                    $warehouses = WarehouseLocation::all();

                    return view('filament.modals.new-products', [
                        'products' => $this->newProducts,
                        'warehouses' => $warehouses,
                        'selectedProducts' => $this->selectedProducts,
                        'selectedWarehouses' => $this->selectedWarehouses,
                        'filteredProducts' => $this->getFilteredProducts(),
                    ]);
                })
                ->action(function () {
                    // ⚠️ Validar que haya productos seleccionados
                    if (empty($this->selectedProducts)) {
                        Notification::make()
                            ->title('Error')
                            ->body('Debes seleccionar al menos un producto.')
                            ->danger()
                            ->send();
                        return;
                    }

                    // ⚠️ Validar que haya almacenes seleccionados
                    if (empty($this->selectedWarehouses)) {
                        Notification::make()
                            ->title('Error')
                            ->body('Debes seleccionar al menos un almacén.')
                            ->danger()
                            ->send();
                        return;
                    }

                    foreach ($this->selectedProducts as $productId) {
                        $product = Product::find($productId);
                        if (!$product) continue;

                        $precioInput = $this->productData[$productId]['precio'] ?? $product->regular_price ?? 0;
                        $precio = floatval(str_replace(',', '.', preg_replace('/[^\d,\.]/', '', $precioInput)));
                        $cantidad = $this->productData[$productId]['stock'] ?? $product->stock ?? 1;

                        foreach ($this->selectedWarehouses as $warehouseId) {
                            $warehouse = WarehouseLocation::find($warehouseId);
                            if (!$warehouse) continue;

                            Relation::create([
                                'id_producto'   => $product->id,
                                'id_wherehouse' => $warehouse->id,
                                'cantidad'      => $cantidad,
                                'precio'        => $precio,
                            ]);
                        }
                    }

                    Notification::make()
                        ->title('Productos agregados correctamente.')
                        ->success()
                        ->send();
                })

                ->extraAttributes(['style' => 'max-height:500px; overflow-y:auto;'])
                ->visible(count($this->newProducts) > 0),
        ];
    }

    public function mount(): void
    {
        $this->newProducts = Product::select(
                'id',
                'name',
                'sku',
                DB::raw('COALESCE(stock, 1) as stock'),
                DB::raw('COALESCE(regular_price, 0) as regular_price')
            )
            ->where('created_at', '>=', now()->subMinutes(120))
            ->get()
            ->toArray();

        // Inicializar datos de stock y precio
        foreach ($this->newProducts as $p) {
            $this->productData[$p['id']] = [
                'stock' => $p['stock'],
                'precio' => $p['regular_price'],
            ];
        }
    }

    public function getFilteredProducts()
    {
        if (!$this->searchTerm) {
            return $this->newProducts;
        }

        return array_filter($this->newProducts, function ($product) {
            return str_contains(strtolower($product['name']), strtolower($this->searchTerm)) ||
                   str_contains(strtolower($product['sku']), strtolower($this->searchTerm));
        });
    }

    public function updatedSelectAllFiltered($value)
    {
        $filteredIds = array_map(fn($p) => $p['id'], $this->getFilteredProducts());
        $this->selectedProducts = $value ? $filteredIds : [];
    }

    public function selectAllProducts()
    {
        $this->selectedProducts = array_map(fn($p) => $p['id'], $this->newProducts);
    }

    public function deselectAllProducts()
    {
        $this->selectedProducts = [];
    }

    public function applyFilter()
    {
        $this->filteredProducts = $this->getFilteredProducts();
    }

}
