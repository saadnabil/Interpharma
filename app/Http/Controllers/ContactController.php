<?php

namespace App\Http\Controllers;

use App\Contact;
use App\Customer;
use App\Location;
use App\Availability;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contact =Contact::latest()->first();
        return view('contact',['allcontact'=>$contact]);
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
    public function storecontact(Request $request)
    {

        $request->validate([
            'email' => 'email|max:100',
            'name' => 'string|max:60',
            'phone' => 'regex:/(01)[0-9]{9}/',
            'subject' => 'nullable|string | max:60',
            'message' => 'nullable|string | max :200',
        ]);

        $cust=new Customer();
        $cust->name =$request->name;
        $cust->email =$request->email;
        $cust->subject =$request->subject;
        $cust->phone =$request->phone;
        $cust->message =$request->message;
        $cust->save();

        session()->flash("success",__('words.add_success'));
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function show(Contact $contact)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function edit(Contact $contact)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Contact $contact)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function destroy(Contact $contact)
    {
        //
    }
    public function ajaxshow(Request $request)
    {
        $ava=Availability::find($request->id);
        return response()->json(['phone'=>$ava->phone,'address'=>$ava->address,'status'=>200]);
    }
}
