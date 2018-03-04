<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductsRequest as Request;
use App\Product;
use DB;
use Storage;
use Illuminate\Support\Facades\Validator;
use Excel;

class ProductsController extends Controller
{
    public function index()
    {
        $minutes = \Carbon\Carbon::now()->addMinutes(10);
        $products = \Cache::remember('api::products', $minutes, function () {
            return Product::all();
        });
       // return $products;
         return response()->json($products);
    }

    public function store(Request $request)
    {
        
        \Cache::forget('api::products');
        $data = $request->all();
        $data['user_id'] = \Auth::user()->id;
        
        
        
        $archivo            = $request->file('archivo');
        $nombre_original    = $archivo->getClientOriginalName();
        $extension          = $archivo->getClientOriginalExtension();
        $r1                 = Storage::disk('archivos')->put($nombre_original, \File::get($archivo));
        $ruta               = storage_path('archivos') . "/" . $nombre_original;
        
        if ($r1) {
            $ct = 0;
            Excel::selectSheetsByIndex(0)->load($ruta, function($hoja) {

                $hoja->each(function($fila) {
                   // DB::enableQueryLog();
                    $id = DB::table('products')->where("lm", "=", $fila->lm)->first();                                    
                    /*$query = DB::getQueryLog();
                    $lastQuery = end($query);
                    print_r($lastQuery);*/
                    if (count($id) == 0) {
                        
                        $excel                      = new Product;
                        $excel->id                  = $fila->id;                                          
                        $excel->lm                  = $fila->lm;
                        $excel->name                = $fila->name;
                        $excel->free_shipping       = $fila->free_shipping;
                        $excel->description         = $fila->description;
                        $excel->price               = $fila->price;                        
                        $excel->save();
                    }
                    if (isset($id)) {
                        $excel                      = new Product;
                        $excel->id                  = $fila->id;                        
                        $excel->lm                  = $fila->lm;
                        $excel->name                = $fila->name;
                        $excel->free_shipping       = $fila->free_shipping;
                        $excel->description         = $fila->description;
                        $excel->price               = $fila->price;

                        DB::table("products")->where('lm', "=", $excel->lm)->update(['lm' => $excel->lm, 'name' => $excel->name,
                            'free_shipping' => $excel->free_shipping, 'description' => $excel->description,
                            'price' => $excel->price]);
                    }
                });
            });

            return view("mensages.msj_correcto")->with("msj", "Importado com Sucesso");             
       } else {
           return view("mensages.msj_rechazado")->with("msj", "Erro ao importar o arquivo!");            
       }
    

        //return Product::create($data);
    }

    public function update(Request $request, Product $product)
    {
        $product->update($request->all());
        return $product;
    }

    public function show(Product $product)
    {
        return $product;
    }

    public function destroy(Request $request, Product $product)
    {
        $this->authorize('delete', $product);
        $product->delete();
        return $product;
    }
}
