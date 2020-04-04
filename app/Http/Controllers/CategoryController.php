<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
    //
    public function index(){
        return Category::all();
    }

    public function show($id){
        return Category::find($id);
    }

    public function store(Request $request){
        return Category::create($request->all());
    }

    public function update(Request $request,$id){
        $task = Category::findOrFail($id);
        $task->update($request->all());

        return $task;
    }

    public function delete(Request $request,$id){
        $task = Category::findOrFail($id);
        $task->delete();

        return 204;
    }
}
