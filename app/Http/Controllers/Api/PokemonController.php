<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;

class PokemonController extends Controller
{
    public function show($name) {
        $response = Http::get("https://pokeapi.co/api/v2/pokemon/{$name}");

        if ($response->failed()) {
            return response()->json(['error' => 'Pokémon no encontrado'], 404);
        }

        return response()->json($response->json());
    }
}
