<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('pages.auth.alumni.login');
    }

    public function admin()
    {
        return view('pages.auth.admin.login');
    }

    

    public function authenticate(Request $request)
    {
        // Validasi input
        $credential = null;

        if ($request->has("email") && $request->has("password")) {
            $credential = $request->validate([
                'email' => 'required|email',
                'password' => 'required'
            ]);
        } else {
            $credential = $request->validate([
                'nik' => 'required',
            ]);
            $credential['password'] = $request->nik; // Menggunakan NIK sebagai password
        }

        // Cek apakah autentikasi berhasil
        if (Auth::attempt($credential, $request->filled('remember'))) {
            $request->session()->regenerate();
            $panel = Auth::user()->role == 'ADMIN' ? route('admin') : route('alumni');
            return redirect()->intended($panel);
        }

        // Jika login gagal, kembalikan dengan pesan kesalahan
        return back()->with('notif-fail', 'NIK/Email atau password salah!');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        return redirect('/');
    }
}
