<div class="space-y-4 w-full">

    {{-- 🚨 Advertencia si no hay almacenes --}}
    @if($warehouses->isEmpty())
        <div class="bg-yellow-100 border-l-4 border-yellow-500 text-yellow-800 p-3 rounded">
            ⚠️ Debes registrar al menos un almacén antes de poder continuar.
        </div>
    @endif

    {{-- 🔍 Búsqueda y controles --}}
<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-2 w-full">
    <input type="text" placeholder="Buscar producto..." wire:model.defer="searchTerm"
        class="border rounded px-3 py-2 w-full sm:w-1/2 focus:outline-none focus:ring-2 focus:ring-primary-500
               dark:bg-gray-800 dark:border-gray-700 dark:text-gray-100 dark:placeholder-gray-400" />

    <div class="flex items-center gap-2 w-full sm:w-auto">
        <button type="button" wire:click="applyFilter"
            class="px-3 py-1.5 text-sm rounded bg-gray-200 hover:bg-gray-300 dark:bg-gray-700 dark:hover:bg-gray-600 dark:text-gray-100">
            Buscar
        </button>

        <button type="button" wire:click="selectAllProducts"
            class="px-3 py-1.5 text-sm rounded bg-gray-200 hover:bg-gray-300 dark:bg-gray-700 dark:hover:bg-gray-600 dark:text-gray-100">
            Seleccionar todo
        </button>

        <button type="button" wire:click="deselectAllProducts"
            class="px-3 py-1.5 text-sm rounded bg-gray-200 hover:bg-gray-300 dark:bg-gray-700 dark:hover:bg-gray-600 dark:text-gray-100">
            Deseleccionar todo
        </button>
    </div>
</div>


    {{-- 📦 Tabla de productos --}}
    <div class="border rounded shadow-sm dark:border-gray-700 dark:shadow-gray-900 overflow-hidden w-full">
        <div class="overflow-y-auto max-h-[300px] w-full">
            <table class="min-w-full divide-y divide-gray-200 dark:divide-gray-700 text-sm table-fixed w-full">
                <thead class="bg-gray-50 dark:bg-gray-800 sticky top-0 z-10 w-full">
                    <tr class="text-gray-700 dark:text-gray-200 w-full">
                        <th class="p-2 text-left w-10">
                            <input type="checkbox" wire:model="selectAll" />
                        </th>
                        <th class="p-2 text-left w-2/5">Producto</th>
                        <th class="p-2 text-left w-1/5">SKU</th>
                        <th class="p-2 text-right w-1/6">Stock</th>
                        <th class="p-2 text-right w-1/6">Precio</th>
                    </tr>
                </thead>
                <tbody class="bg-white dark:bg-gray-900 divide-y divide-gray-200 dark:divide-gray-700 w-full">
                    @forelse($filteredProducts as $product)
                        @php
                            // Limpiar precio y convertir a float
                            $precio = isset($product['regular_price'])
                                ? floatval(str_replace(',', '.', preg_replace('/[^\d,\.]/', '', $product['regular_price'])))
                                : 0;
                        @endphp
                        <tr class="hover:bg-gray-50 dark:hover:bg-gray-800 transition w-full">
                            <td class="p-2">
                                <input type="checkbox" wire:model="selectedProducts" value="{{ $product['id'] }}">
                            </td>
                            <td class="p-2 text-gray-900 dark:text-gray-100 truncate max-w-[180px]">
                                {{ $product['name'] }}
                            </td>
                            <td class="p-2 text-gray-900 dark:text-gray-100">{{ $product['sku'] }}</td>
                            <td class="p-2 text-right">
                                <input type="number" min="1"
                                    wire:model.defer="productData.{{ $product['id'] }}.stock"
                                    value="{{ (int) ($product['stock'] ?? 1) }}"
                                    class="w-16 text-right border rounded px-2 py-1
                                           dark:bg-gray-800 dark:border-gray-700 dark:text-gray-100 focus:ring-primary-500" />
                            </td>
                            <td class="p-2 text-right">
                                <input type="number" step="0.01" min="0"
                                    wire:model.defer="{{$precio}}"
                                    value="{{ $precio }}"
                                    class="w-20 text-right border rounded px-2 py-1
                                        dark:bg-gray-800 dark:border-gray-700 dark:text-gray-100 focus:ring-primary-500" />
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="5" class="p-4 text-center text-gray-500 dark:text-gray-400">
                                No se encontraron productos.
                            </td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>

    {{-- 🏢 Selector de almacenes --}}
    <div class="w-full">
        <label class="block mb-1 font-semibold dark:text-gray-100">Almacenes:</label>
        <select multiple wire:model="selectedWarehouses"
            class="w-full border rounded px-3 py-2 h-28 overflow-auto focus:outline-none focus:ring-2 focus:ring-primary-500
                   dark:bg-gray-800 dark:border-gray-700 dark:text-gray-100">
            @foreach($warehouses as $wh)
                <option value="{{ $wh->id }}">
                    {{ $wh->aisle }} - {{ $wh->shelf }} - {{ $wh->bin_number }}
                </option>
            @endforeach
        </select>
        <p class="text-sm text-gray-500 dark:text-gray-400 mt-1">
            Mantén presionada Ctrl (Cmd en Mac) para seleccionar varios.
        </p>
    </div>
</div>
