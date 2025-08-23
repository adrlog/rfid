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
            <div class="mb-4 text-lg font-bold text-primary-600">
                Producto escaneado: {{ $product['product_name'] ?? 'Sin nombre' }}
            </div>

            <div class="overflow-auto rounded-lg shadow">
                <table class="min-w-full border border-gray-200">
                    <thead class="bg-gray-100">
                        <tr>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">ID</th>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">RFID</th>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">Descripción</th>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">Stock</th>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">Condición</th>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">Precio Costo</th>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">Precio Venta</th>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">Fecha Alta</th>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">Última Actualización</th>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">Usuario Creador</th>
                            <th class="px-4 py-2 text-left text-sm font-medium text-gray-700">Imagen</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-200">
                        <tr>
                            <td class="px-4 py-2 text-sm text-gray-800">{{ $product['id'] }}</td>
                            <td class="px-4 py-2 text-sm text-gray-800">{{ $product['rfid_code'] }}</td>
                            <td class="px-4 py-2 text-sm text-gray-800">{{ $product['brief_description'] }}</td>
                            <td class="px-4 py-2 text-sm text-gray-800">{{ $product['current_stock'] }}</td>
                            <td class="px-4 py-2 text-sm text-gray-800">{{ $product['product_condition'] }}</td>
                            <td class="px-4 py-2 text-sm text-gray-800">${{ $product['cost_price'] }}</td>
                            <td class="px-4 py-2 text-sm text-gray-800">${{ $product['sale_price'] }}</td>
                            <td class="px-4 py-2 text-sm text-gray-800">{{ \Carbon\Carbon::parse($product['date_of_discharge'])->format('Y-m-d') }}</td>
                            <td class="px-4 py-2 text-sm text-gray-800">{{ \Carbon\Carbon::parse($product['last_updated_date'])->format('Y-m-d') }}</td>
                            <td class="px-4 py-2 text-sm text-gray-800">{{ $product['creator_user'] }}</td>
                            <td class="px-4 py-2 text-sm text-gray-800">
                                @if ($product['product_picture'])
                                    <img src="{{ asset('storage/' . $product['product_picture']) }}" alt="Imagen" class="h-10">
                                @else
                                    <em>Sin imagen</em>
                                @endif
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        @else
            <div>No hay producto escaneado.</div>
        @endif
    </x-filament::section>
</x-filament-widgets::widget>
