<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Urun;

class UrunController extends Controller
{
    public function index(){
        return Urun::all();
    }

    public function show($id){
        return Urun::find($id);
    }

    public function store(Request $request){
        return Urun::create($request->all());
    }

    public function update(Request $request,$id){
        $task = Urun::findOrFail($id);
        $task->update($request->all());

        return $task;
    }

    public function delete(Request $request,$id){
        $task = Urun::findOrFail($id);
        $task->delete();

        return 204;
    }
}
