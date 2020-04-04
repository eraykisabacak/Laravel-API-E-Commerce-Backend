<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Musteri;

class MusteriController extends Controller
{
    public function index(){
        return Musteri::all();
    }

    public function show($id){
        return Musteri::find($id);
    }

    public function store(Request $request){
        return Musteri::create($request->all());
    }

    public function update(Request $request,$id){
        $task = Musteri::findOrFail($id);
        $task->update($request->all());

        return $task;
    }

    public function delete(Request $request,$id){
        $task = Musteri::findOrFail($id);
        $task->delete();

        return 204;
    }
}
