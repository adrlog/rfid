<div wire:poll.2000ms="pollProduct">
    <h2 class="text-lg font-bold mb-4">Último producto escaneado</h2>

    @if($product)
        <div class="p-4 border rounded shadow">
            <p><strong>ID:</strong> {{ $product['id'] }}</p>
            <p><strong>Nombre:</strong> {{ $product['name'] }}</p>
            <p><strong>RFID:</strong> {{ $product['rfid_code'] }}</p>
        </div>
    @else
        <p class="text-gray-500">Esperando escaneo...</p>
    @endif
</div>
