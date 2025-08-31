<x-filament-widgets::widget>
    <x-filament::section>
        @script
        <script>
            setInterval(() => {
                $wire.pollProduct()
            }, 1000)
        </script>
        @endscript

        @if ($product)
            <div class="mb-3 text-base md:text-lg font-bold text-primary-600">
                Producto escaneado: {{ $product['name'] ?? 'Sin nombre' }}
            </div>

            <div class="overflow-auto rounded-lg border border-gray-200 w-full">
                <table class="table-fixed w-full border-collapse text-sm">
                    <thead class="bg-gray-100">
                        <tr class="text-left">
                            <th class="px-3 py-2 font-medium text-gray-700 w-1/12">RFID</th>
                            <th class="px-3 py-2 font-medium text-gray-700 w-2/12">Marca</th>
                            <th class="px-3 py-2 font-medium text-gray-700 w-1/12">Stock</th>
                            <th class="px-3 py-2 font-medium text-gray-700 w-1/12">Condición</th>
                            <th class="px-3 py-2 font-medium text-gray-700 w-2/12">Precio costo</th>
                            <th class="px-3 py-2 font-medium text-gray-700 w-2/12">Precio venta</th>
                            <th class="px-3 py-2 font-medium text-gray-700 w-3/12 text-center">Imagen</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-200">
                        <tr>
                            <td class="px-3 py-2 text-gray-800">{{ $product['rfid_code'] ?? '—' }}</td>
                            <td class="px-3 py-2 text-gray-800">
                                {{ $product['brand']['name'] ?? ($product['marca'] ?? 'Sin marca') }}
                            </td>
                            <td class="px-3 py-2 text-gray-800">{{ $product['stock'] ?? '0' }}</td>
                            <td class="px-3 py-2 text-gray-800">{{ $product['condicion'] ?? 'N/A' }}</td>
                            <td class="px-3 py-2 text-gray-800">{{ $product['cost_price'] ?? 'N/A' }}</td>
                            <td class="px-3 py-2 text-gray-800">{{ $product['regular_price'] ?? 'N/A' }}</td>
                            <td class="px-3 py-2 text-gray-800 text-center">
                                @php
                                    $img = $product['product_picture'] ?? null;
                                    if (empty($img) && !empty($product['images'])) {
                                        $imagesField = $product['images'];

                                        if (is_array($imagesField)) {
                                            $img = $imagesField[0] ?? null;
                                        } else {
                                            // Intentar JSON
                                            $decoded = json_decode($imagesField, true);
                                            if (json_last_error() === JSON_ERROR_NONE && is_array($decoded)) {
                                                $img = $decoded[0] ?? null;
                                            } else {
                                                // CSV o URL simple
                                                $parts = array_filter(array_map('trim', explode(',', $imagesField)));
                                                $img = $parts[0] ?? $imagesField;
                                            }
                                        }
                                    }

                                    $imgSrc = null;
                                    if (!empty($img)) {
                                        $imgSrc = filter_var($img, FILTER_VALIDATE_URL)
                                            ? $img
                                            : asset('storage/' . ltrim($img, '/'));
                                    }
                                @endphp

                                @if ($imgSrc)
                                    <img src="{{ $imgSrc }}" alt="Imagen"
                                        style="max-width: 150px; max-height: 150px; object-fit: contain; margin: auto; border-radius: 8px; box-shadow: 0px 2px 6px rgba(0,0,0,0.2);" />
                                @else
                                    <em>Sin imagen</em>
                                @endif
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        @else
            <div class="text-gray-500 italic">No hay producto escaneado.</div>
        @endif
    </x-filament::section>
</x-filament-widgets::widget>
