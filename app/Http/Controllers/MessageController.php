<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;

class MessageController extends Controller
{
    public function index(): View
    {
        $messages = Message::latest()->get();

        return view('uzenetek', [
            'messages' => $messages
        ]);
    }

    public function create(): View
    {
        return view('kapcsolat');
    }

    public function store(Request $request): RedirectResponse
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'message' => 'required|string|min:10',
        ]);

        Message::create([
            'name' => $request->name,
            'email' => $request->email,
            'message' => $request->message,
        ]);

        return redirect()->route('kapcsolat')->with('success', 'Üzenet sikeresen elküldve!');
    }
}