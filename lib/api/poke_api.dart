import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

Future<Map> getPoke() async {
  String url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  http.Response response = await http.get(url);
  return json.decode(response.body);
}