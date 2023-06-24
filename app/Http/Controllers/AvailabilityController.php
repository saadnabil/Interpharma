<?php

namespace App\Http\Controllers;

use App\Contact;
use App\Availability;
use Illuminate\Http\Request;

class AvailabilityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $branch =Availability::all();

        $contact =Contact::latest()->first();
        return view('about',[ 'allcontact'=>$contact ,'allbranch'=>$branch]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        dd($_REQUEST);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Availability  $availability
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        return $id;
        $branch =Availability::all();
        $selbr =Availability::find($id);
        $contact =Contact::latest()->first();
        return view('about',[ 'allcontact'=>$contact  ,'allbranch'=>$branch , 'selbr'=>$selbr]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Availability  $availability
     * @return \Illuminate\Http\Response
     */
    public function edit(Availability $availability)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Availability  $availability
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Availability $availability)
    {
        //
    }
    // public function ava(Request $request)
    // {
    //     $selbr =Availability::find($request->id);
    //     if($selbr)
    //         return response()->json(["status"=>200,'address'=>$selbr->address,"phone"=>$selbr->phone],200);
    //     else
    //         return response()->json(["status"=>404],404);

    //     }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Availability  $availability
     * @return \Illuminate\Http\Response
     */
    public function destroy(Availability $availability)
    {
        //
    }
}
