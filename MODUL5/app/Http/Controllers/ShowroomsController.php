<?php

namespace App\Http\Controllers;

use App\Models\Showrooms;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Http\Request;

class ShowroomsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view("crud.index",[
            "datamobil" => Showrooms::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("crud.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required',
            'owner' => 'required',
            'brand' => 'required',
            'purchase_date' => 'required',
            'description' => 'required',
            'image' => 'required',
            'status' => 'required',
        ]);

        if ($request -> file('image')){
            $validated['image']=$request->file('image')->store("uploadfoto");

        }

        Showrooms::create($validated);
        return redirect('/mobil');


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Showrooms  $showrooms
     * @return \Illuminate\Http\Response
     */
    public function show(Showrooms $showrooms)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Showrooms  $showrooms
     * @return \Illuminate\Http\Response
     */
    public function edit(Showrooms $showrooms)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Showrooms  $showrooms
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Showrooms $showrooms)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Showrooms  $showrooms
     * @return \Illuminate\Http\Response
     */
    public function destroy(Showrooms $showrooms)
    {
        //
    }
}
