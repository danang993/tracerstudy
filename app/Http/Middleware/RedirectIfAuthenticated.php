<?php

namespace App\Http\Middleware;

use App\Providers\RouteServiceProvider;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next, string ...$guards): Response
    {
        // Mengatur guards yang digunakan
        $guards = empty($guards) ? [null] : $guards;

        // Memeriksa setiap guard
        foreach ($guards as $guard) {
            if (Auth::guard($guard)->check()) {
                // Redirect ke halaman utama jika sudah terautentikasi
                return redirect(RouteServiceProvider::HOME);
            }
        }

        // Melanjutkan permintaan jika tidak terautentikasi
        return $next($request);
    }
}
