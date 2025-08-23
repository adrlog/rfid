<div x-data="{ currentIndex: 0 }">
    @if ($getState() && count($getState()) > 0)
        <div class="mt-4 p-4 border rounded-lg bg-gray-50 dark:bg-gray-900">
            <p class="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                Additional Images Preview ({{ count($getState()) }}):
                <span class="text-xs text-gray-500 ml-2">Comma-separated URLs</span>
            </p>
            
            <div class="relative">
                <!-- Navigation arrows -->
                <template x-if="$wire._additional_images_preview.length > 4">
                    <div class="absolute inset-y-0 left-0 flex items-center z-10">
                        <button 
                            type="button" 
                            class="bg-white dark:bg-gray-800 rounded-full p-2 shadow-md -ml-4"
                            @click="document.getElementById('imageGallery').scrollBy({ left: -200, behavior: 'smooth' })"
                        >
                            ←
                        </button>
                    </div>
                </template>
                
                <template x-if="$wire._additional_images_preview.length > 4">
                    <div class="absolute inset-y-0 right-0 flex items-center z-10">
                        <button 
                            type="button" 
                            class="bg-white dark:bg-gray-800 rounded-full p-2 shadow-md -mr-4"
                            @click="document.getElementById('imageGallery').scrollBy({ left: 200, behavior: 'smooth' })"
                        >
                            →
                        </button>
                    </div>
                </template>
                
                <!-- Horizontal gallery -->
                <div 
                    id="imageGallery"
                    class="flex overflow-x-auto space-x-3 pb-3 scrollbar-thin horizontal-scroll-gallery"
                    style="scroll-snap-type: x mandatory;"
                >
                    @foreach ($getState() as $index => $imageUrl)
                        <div class="flex-shrink-0 relative group" style="scroll-snap-align: start;">
                            <img 
                                src="{{ $imageUrl }}" 
                                alt="Preview {{ $index + 1 }}" 
                                class="w-32 h-32 object-cover rounded border"
                                onerror="this.style.display='none'; this.nextElementSibling.style.display='flex'"
                            >
                            <div class="hidden absolute inset-0 bg-gray-100 dark:bg-gray-800 rounded border text-center flex-col items-center justify-center p-1">
                                <span class="text-xs text-gray-500 break-words">Invalid image URL</span>
                                <span class="text-xs text-gray-400 mt-1 break-all">{{ Str::limit($imageUrl, 25) }}</span>
                            </div>
                            
                            <button 
                                type="button" 
                                class="absolute -top-2 -right-2 bg-red-500 text-white rounded-full w-5 h-5 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity"
                                @click="$wire.set('_additional_images_preview', $wire._additional_images_preview.filter((_, i) => i !== {{ $index }}))"
                                title="Remove this image from preview"
                            >
                                &times;
                            </button>
                        </div>
                    @endforeach
                </div>
            </div>
            
            <div class="mt-2 text-xs text-gray-500 flex justify-between items-center">
                <p>Scroll or use arrows to view all images</p>
                <p>{{ count($getState()) }} total images</p>
            </div>
        </div>
    @else
        <div class="mt-4 p-4 border border-dashed rounded-lg text-center text-gray-500 dark:text-gray-400">
            <p class="text-sm">No additional images preview available</p>
            <p class="text-xs">Enter URLs (comma-separated) or upload images to see preview</p>
        </div>
    @endif
</div>