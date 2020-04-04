<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AdminKullanicilari;

class AdminController extends Controller
{
    //
    public function index(){
        return AdminKullanicilari::all();
    }

    public function show($id){
        return AdminKullanicilari::find($id);
    }

    public function store(Request $request){
        return AdminKullanicilari::create($request->all());
    }

    public function update(Request $request,$id){
        $task = AdminKullanicilari::findOrFail($id);
        $task->update($request->all());

        return $task;
    }

    public function delete(Request $request,$id){
        $task = AdminKullanicilari::findOrFail($id);
        $task->delete();

        return 204;
    }
}
