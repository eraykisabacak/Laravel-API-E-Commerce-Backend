<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sepet;
class SepetController extends Controller
{
    //
    public function index(){
        return Sepet::all();
    }

    public function show($id){
        return Sepet::find($id);
    }

    public function store(Request $request){
        return Sepet::create($request->all());
    }

    public function update(Request $request,$id){
        $task = Sepet::findOrFail($id);
        $task->update($request->all());

        return $task;
    }

    public function delete(Request $request,$id){
        $task = Sepet::findOrFail($id);
        $task->delete();

        return 204;
    }
}
