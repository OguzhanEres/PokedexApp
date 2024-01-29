import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemonmode.dart';

class Api {
  static const String _verikaynagi =
      'https://raw.githubusercontent.com/Biuni/PokemonGo-Pokedex/master/pokedex.json';
  static Future<List<Pokemonmodel>> getpokemon() async {
    List<Pokemonmodel> _tumpokemonlar = [];
    var result = await Dio().get(_verikaynagi);
    var pokemonlist = jsonDecode(result.data)['pokemon'];
    if (pokemonlist is List) {
      _tumpokemonlar =
          pokemonlist.map((e) => Pokemonmodel.fromJson(e)).toList();
    }
    return _tumpokemonlar;
  }
}
