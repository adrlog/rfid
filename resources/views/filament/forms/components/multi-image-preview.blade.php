<div>
    @if ($getState() && count($getState()) > 0)
        <div class="mt-4 p-4 border rounded-lg bg-gray-50 dark:bg-gray-900">
            <p class="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                Additional Images Preview ({{ count($getState()) }}):
                <span class="text-xs text-gray-500 ml-2">Comma-separated URLs</span>
            </p>
            <div class="grid grid-cols-4 gap-2">
                @foreach ($getState() as $imageUrl)
                    <div class="relative group">
                        <img 
                            src="{{ $imageUrl }}" 
                            alt="Preview" 
                            class="w-full h-20 object-cover rounded border"
                            onerror="this.style.display='none'; this.nextElementSibling.style.display='block'"
                        >
                        <div class="hidden absolute inset-0 bg-gray-100 dark:bg-gray-800 rounded border text-center items-center justify-center">
                            <span class="text-xs text-gray-500 p-1 break-all">{{ Str::limit($imageUrl, 20) }}</span>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="mt-2 text-xs text-gray-500">
                <p>URLs will be saved as: {{ implode(', ', array_slice($getState(), 0, 3)) }}{{ count($getState()) > 3 ? ', ...' : '' }}</p>
            </div>
        </div>
    @else
        <div class="mt-4 p-4 border border-dashed rounded-lg text-center text-gray-500 dark:text-gray-400">
            <p class="text-sm">No additional images preview available</p>
            <p class="text-xs">Enter URLs (comma-separated) or upload images to see preview</p>
        </div>
    @endif
</div>