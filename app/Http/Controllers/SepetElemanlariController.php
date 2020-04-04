<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SepetElemanlari;
class SepetElemanlariController extends Controller
{
    //
    public function index(){
        return SepetElemanlari::all();
    }

    public function show($id){
        return SepetElemanlari::find($id);
    }

    public function store(Request $request){
        return SepetElemanlari::create($request->all());
    }

    public function update(Request $request,$id){
        $task = SepetElemanlari::findOrFail($id);
        $task->update($request->all());

        return $task;
    }

    public function delete(Request $request,$id){
        $task = SepetElemanlari::findOrFail($id);
        $task->delete();

        return 204;
    }
}
