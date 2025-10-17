<x-filament::page>
    <div class="space-y-6">

        {{-- 🔍 Filtros de fecha --}}
        <form wire:submit.prevent="mount" class="flex flex-wrap items-end gap-4">
            <div class="flex-1 min-w-[150px]">
                <label for="desde" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Desde</label>
                <input
                    type="date"
                    wire:model.defer="desde"
                    id="desde"
                    class="mt-1 block w-full rounded-lg border-gray-300 dark:border-gray-600 
                           bg-white dark:bg-gray-700 text-gray-700 dark:text-gray-200 
                           shadow-sm focus:border-primary-500 focus:ring-primary-500 sm:text-sm"
                />
            </div>

            <div class="flex-1 min-w-[150px]">
                <label for="hasta" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Hasta</label>
                <input
                    type="date"
                    wire:model.defer="hasta"
                    id="hasta"
                    class="mt-1 block w-full rounded-lg border-gray-300 dark:border-gray-600 
                           bg-white dark:bg-gray-700 text-gray-700 dark:text-gray-200 
                           shadow-sm focus:border-primary-500 focus:ring-primary-500 sm:text-sm"
                />
            </div>

            <div class="flex-none">
                <x-filament::button type="submit" color="primary">
                    Filtrar
                </x-filament::button>
            </div>
        </form>

        {{-- 📊 Tabla de resumen --}}
        <div class="overflow-x-auto">
            {{ $this->table }}
        </div>
    </div>
</x-filament::page>
