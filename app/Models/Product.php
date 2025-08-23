<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Support\Facades\Storage;

class Product extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     */
    protected $fillable = [
        'name',
        'sku',
        'origen_price',
        'transporte',
        'cost_price',
        'minimum_price',
        'regular_price',
        'beneficio_web',
        'beneficio_glovo',
        'type',
        'published',
        'visibility_in_catalog',
        'description',
        'meta_title',
        'meta_description',
        'categories',
        'supercategories',
        'images',
        'stock',
        'gtin',
        'collection',
        'variant_attribute_1',
        'color',
        'marca',
        'item_size',
        'publico_objetivo',
        'funciones',
        'proveedor',
        'condicion',
        'informacion_adicional',
        'rfid_code',
        'product_picture',
        'brand_id',
        'supplier_id',
        'warehouse_location_id',
    ];

    /**
     * The attributes that should be cast to native types.
     */
    protected $casts = [
        'published' => 'boolean',
    ];

    public function brand(): BelongsTo
    {
        return $this->belongsTo(Brand::class);
    }

    public function supplier(): BelongsTo
    {
        return $this->belongsTo(Supplier::class);
    }

    public function warehouseLocation(): BelongsTo
    {
        return $this->belongsTo(WarehouseLocation::class);
    }

    public function rfidScans(): HasMany
    {
        return $this->hasMany(RfidScanLog::class, 'rfid_code', 'rfid_code');
    }

    /**
     * The "booted" method of the model.
     */
    protected static function booted(): void
    {
        static::saving(function (Product $product) {
            // Handle main image upload (unchanged)
            if (request()->hasFile('product_picture_upload')) {
                // Delete old image if exists and it's a file (not URL)
                if ($product->product_picture && !filter_var($product->product_picture, FILTER_VALIDATE_URL)) {
                    Storage::delete($product->product_picture);
                }
                
                $path = request()->file('product_picture_upload')->store('products', 'public');
                $product->product_picture = $path;
            }
            
            // Handle additional images upload (unchanged)
            if (request()->hasFile('images_upload')) {
                $uploadedImages = [];
                
                // Process new uploads
                foreach (request()->file('images_upload') as $file) {
                    $path = $file->store('products/gallery', 'public');
                    $uploadedImages[] = $path;
                }
                
                // Merge with existing images if any
                $existingImages = [];
                if ($product->images) {
                    $existingImages = is_array($product->images) 
                        ? $product->images 
                        : json_decode($product->images, true) ?? [];
                }
                
                $product->images = json_encode(array_merge($existingImages, $uploadedImages));
            }
            
            // UPDATED: Handle textarea URLs for additional images (comma-separated)
            if (request()->filled('images')) {
                $urls = array_filter(
                    array_map('trim', explode(',', request()->input('images'))),
                    function($url) {
                        return filter_var($url, FILTER_VALIDATE_URL);
                    }
                );
                
                // If we have URLs from textarea, use them (overwrite uploaded files)
                if (!empty($urls)) {
                    $product->images = json_encode($urls);
                }
            }
        });
    }
    
    /**
     * Accessor for images attribute
     */
    public function getImagesArrayAttribute(): array
    {
        if (empty($this->images)) {
            return [];
        }
        
        if (is_array($this->images)) {
            return $this->images;
        }
        
        return json_decode($this->images, true) ?? [];
    }
    
    /**
     * Accessor for getting all image URLs (handles both stored files and external URLs)
     */
    public function getImageUrlsAttribute(): array
    {
        $urls = [];
        
        foreach ($this->images_array as $image) {
            if (filter_var($image, FILTER_VALIDATE_URL)) {
                $urls[] = $image;
            } else {
                $urls[] = Storage::url($image);
            }
        }
        
        return $urls;
    }
    
    /**
     * Accessor for getting the main image URL
     */
    public function getMainImageUrlAttribute(): string
    {
        if (filter_var($this->product_picture, FILTER_VALIDATE_URL)) {
            return $this->product_picture;
        }
        
        if ($this->product_picture) {
            return Storage::url($this->product_picture);
        }
        
        return 'https://ui-avatars.com/api/?name='.urlencode($this->name).'&color=FFFFFF&background=111827';
    }
}