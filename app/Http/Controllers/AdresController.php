<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Adres;

class AdresController extends Controller
{
    //
    public function index(){
        return Adres::all();
    }

    public function show($id){
        return Adres::find($id);
    }

    public function store(Request $request){
        return Adres::create($request->all());
    }

    public function update(Request $request,$id){
        $task = Adres::findOrFail($id);
        $task->update($request->all());

        return $task;
    }

    public function delete(Request $request,$id){
        $task = Adres::findOrFail($id);
        $task->delete();

        return 204;
    }
}
