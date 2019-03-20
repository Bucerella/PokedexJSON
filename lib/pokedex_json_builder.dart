import 'package:flutter/material.dart';
import 'package:pokedex/api/poke_api.dart';
import 'package:pokedex/pokedex_detail.dart';

Widget jsonPoke(){

  return FutureBuilder(future: getPoke(),builder: (context, snapshot){

    if(snapshot.hasData){
      Map verilerMap = snapshot.data;
      List pokex = verilerMap["pokemon"];
      return GridView.builder(itemCount: pokex.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, i){

        return Card(
          child: InkWell(
            onTap: (){
              var route=MaterialPageRoute(builder: (contex){
                return PokeDetail(
                  img: pokex[i]["img"],
                  name: pokex[i]["name"],
                  heigth: pokex[i]["height"],
                  weigth: pokex[i]["weight"],
                  weakness: pokex[i]["weaknesses"],
                  types: pokex[i]["type"],
                );
              });
              Navigator.push(context, route);
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("${pokex[i]["img"]}"),),
              ),
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 10),
              child: Text("${pokex[i]["name"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          ),


        );



      });

    }
    else{
      return Center(child: CircularProgressIndicator());
    }

  });


}