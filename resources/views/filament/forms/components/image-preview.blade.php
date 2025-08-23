<div>
    @if ($getState())
        <div class="mt-4 p-4 border rounded-lg bg-gray-50 dark:bg-gray-900">
            <p class="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Image Preview:</p>
            <div class="flex justify-center">
                <img 
                    src="{{ $getState() }}" 
                    alt="Preview" 
                    class="rounded border max-w-full h-40 object-contain"
                    onerror="this.style.display='none'; this.nextElementSibling.style.display='block'"
                >
                <div class="hidden text-center text-sm text-gray-500 dark:text-gray-400 mt-4">
                    <p>⚠️ Cannot load image preview</p>
                    <p class="text-xs break-all">{{ $getState() }}</p>
                </div>
            </div>
            <p class="text-xs text-gray-500 dark:text-gray-400 mt-2 text-center">
                @if (filter_var($getState(), FILTER_VALIDATE_URL))
                    URL image preview
                @else
                    Uploaded image preview
                @endif
            </p>
        </div>
    @else
        <div class="mt-4 p-4 border border-dashed rounded-lg text-center text-gray-500 dark:text-gray-400">
            <p class="text-sm">No image preview available</p>
            <p class="text-xs">Enter a URL or upload an image to see preview</p>
        </div>
    @endif
</div>