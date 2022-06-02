<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Category;
use App\Models\CategorySubs;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;


class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product = Product::all();
        return view('product.index', compact('product'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        $category_subs = CategorySubs::all();
        return view('product.create', compact('categories', 'category_subs'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreProductRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProductRequest $request)
    {
          $request->validate([
            'images' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:1024',
        ]);

        $file_name = $request->images->getClientOriginalName();
        $image = $request->images->move('img', $file_name);
        
         Product::create([
            'category_id' => $request->category_id,
            'category_subs_id' => $request->category_sub_id,
            'name' => $request->name,
            'images' => $image,
            'price' => $request->price,
            'price2' => $request->price2,
            'price2qty' => $request->price2qty,
            'price3' => $request->price3,
            'price3qty' => $request->price3qty,
            'quantity' => $request->quantity,
            'description' => $request->description,
            'status' => $request->status,
        ]);
        Alert::success('Success', 'Data Product sudah di tambahkan');

    return redirect()->route('product.index');
        // dd($a);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Product::find($id);
        return view('product.edit', ['data' => $data]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateProductRequest  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateProductRequest $request, $id)
    {
        $product = Product::find($id);

        if ($request->hasFile('images')) {
            $file_name = $request->images->getClientOriginalName();
            $image = $request->images->move('img', $file_name);

            $product->name = $request->input('name');
            $product->price = $request->input('price');
            $product->price2 = $request->input('price2');
            $product->price2qty = $request->input('price2qty');
            $product->price3 = $request->input('price3');
            $product->price3qty = $request->input('price3qty');
            $product->quantity = $request->input('quantity');
            $product->description = $request->input('description');
            $product->status = $request->input('status');
            $product->images = $image;
        } else {
            $product->name = $request->input('name');
            $product->price = $request->input('price');
            $product->price2 = $request->input('price2');
            $product->price2qty = $request->input('price2qty');
            $product->price3 = $request->input('price3');
            $product->price3qty = $request->input('price3qty');
            $product->quantity = $request->input('quantity');
            $product->description = $request->input('description');
            $product->status = $request->input('status');
        }

        $product->save();

        Alert::success('Success', 'Data Product berhasil diperbaharui');
        return redirect()->route('product.index');    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product->delete();
        Alert::success('Success', 'Data Product sudah di hapus');
        return back();
    }

    // controller detail product
    public function getDetailProduct ($id)
    {
        $user = Auth::user();
        $allProduct = Product::all();
        $product = Product::where('id', $id)->first();
        $productByID = Product::find($id);
        $category = Category::where('id', $product->category_id)->first();
        $subCategory = CategorySubs::where('id', $product->category_subs_id)->first();
        
        $data = [
            'user' => $user,
            'allProduct' => $allProduct,
            'category' => $category,
            'subCategory' => $subCategory,
            'product' => $product,
            'productByID' => $productByID,
        ];

        return view('testProduct', $data);
    }

    public function search() 
    {
        $search_text = $_GET['query'];
        $product = Product::where('name', 'LIKE', '%'.$search_text.'%')->get();  
        // $product = Product::all();
        return view('product.index', compact('product'));
    }
}
