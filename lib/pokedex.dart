import 'package:flutter/material.dart';
import 'package:pokedex/pokedex_json_builder.dart';

class Pokedex extends StatefulWidget {
  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("POKEDEX",

        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 45,
          color: Colors.black
        ),),
      ),
      body: jsonPoke(),
    );
  }
}
