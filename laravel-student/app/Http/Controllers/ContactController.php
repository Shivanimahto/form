<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\ContactEmail;
use App\Models\ContactPhone;


class ContactController extends Controller
{
    //
    public function getContact(){
        return response()->json(contact::all(),200);
    }

    public function getContactById($id){
      $contact = Contact::with('email','number')->find($id);
      if(is_null($contact)){
         return response()->json(['message'=> 'contact not found'],404);
      }
       return response()->json($contact , 200);
    }

    public function addContact(Request $request){

      $contact = Contact::create($request->all());
      foreach($request->emails as $key => $value)
      {
        $data['email'] = $value;
        $object = new ContactEmail($data);
        $contact->email()->save($object);
      }

      foreach($request->phones as $key => $value)
      {
        $data['number'] = $value;
        $object = new ContactPhone($data);
        $contact->number()->save($object);
      }
      return response($contact, 200);
    }

      public function updateContact(Request $request, $id){
      $contact = Contact::find($id);
      if(is_null($contact)){
         return response()->json(['message'=>'contact not found'],404);
      }
       $contact->update($request->all());
       $contact->email()->delete();
       $contact->number()->delete();

       foreach ($request->emails as $key => $value)
       {
         $data['email'] = $value;
         $object = new ContactEmail($data);
         $contact->email()->save($object);
       }

       foreach($request->phones as $key =>$value)
       {
        $data['number'] = $value;
        $object = new ContactPhone($data);
        $contact->number()->save($object);
       }

       return response()->json($contact, 200);
    }

    public function deleteContact(Request $request, $id){
        $contact = Contact::find($id);
        if(is_null($contact)){
            return response()->json(['message'=>'contact not found'],404);
        }

        $contact->delete();

        return response()->json(null, 204);
    }
}

