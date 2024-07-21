<?php

namespace App\Http\Controllers;
use App\Models\product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function updateQuantity(Request $request)
    {
        $name = $request->input('name');
        $imageUrl = $request->input('image_url');
        $quantity = $request->input('quantity');

        // 根據你的需求處理更新邏輯
        // 這裡僅僅是個例子
        $product = Product::where('name', $name)->first();
        if ($product) {
            $product->quantity = $quantity;
            $product->image_url = $imageUrl;
            $product->save();
        } else {
            Product::create([
                'name' => $name,
                'quantity' => $quantity,
                'image_url' => $imageUrl,
            ]);
        }

        return response()->json(['success' => true]);
    }
}
