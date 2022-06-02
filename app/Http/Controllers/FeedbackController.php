<?php

namespace App\Http\Controllers;

use App\Models\Feedback;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use RealRashid\SweetAlert\Facades\Alert;

class FeedbackController extends Controller
{
    public function index()
    {
        $data = Auth::user();
        return view('contact.index', compact('data'));
    }

    public function store(Request $request)
    {   
         Feedback::create([
            'name' => $request->name,
            'email' => $request->email,
            'subject' => $request->subject,
            'message' => $request->message,
        ]);
        Alert::success('Success', 'Feedback sudah di kirim :))');

        return redirect()->route('feedback.index');
        // dd($a);
    }
}
