<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;

class UserFavouriteController extends Controller
{
    public function index()
    {
        $userID = \Auth::id();
        $products = Product::with('category')
            ->whereHas('favourite', function($query) use ($userID){
            $query->where('uf_user_id', $userID);
        })->select('id','pro_name','pro_slug','pro_sale','pro_avatar','pro_price','pro_category_id')
            ->paginate(10);


        return view('user.favourite', compact('products'));
    }

    /**
     * Favourite Item
     * */
    public function addFavourite(Request $request, $id)
    {
        if ($request->ajax()) {

            //1.  Check available item
            $product = Product::find($id);
            if (!$product) return response(['messages' => 'The product is not exist']);

            $messages = 'Product added to Wish List';
            try {
                \DB::table('user_favourite')
                ->insert([
                    'uf_product_id' => $id,
                    'uf_user_id'    => \Auth::id()
                ]);

            } catch (\Exception $e) {
                $messages = 'This product has already been added to Wish List'; 
            }

            return response(['messages' => $messages]);
        }
    }

    public function delete($id) {
        \DB::table('user_favourite')->where([
            'uf_product_id' => $id,
            'uf_user_id'    => \Auth::id()
        ])->delete();
        return redirect()->back();
    }
}
