import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import 'Pokemon_Detail_Screen.dart';

class Pokemon extends StatefulWidget
{
  @override
  State<Pokemon> createState() => Pokemon_State();
}

class Pokemon_State extends State<Pokemon>
{
  List pokedex = [];
  var pokemonApi = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  @override
  void initState()
  {
    super.initState();
    if( mounted )
      {
        fetch_Pokemon_Data();
      }
  }

  @override
  Widget build(BuildContext buildContext)
  {
    var width = MediaQuery.of(buildContext).size.width;
    var height = MediaQuery.of(buildContext).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body:
      /*
      Center(
        child: ElevatedButton(
          onPressed: (){
          fetch_Pokemon_Data();
        },
          child: Text("Press Button"),
        ),
      ),
      */

      Stack(
        children: [

          Positioned(
            top: -50.0,
              right: -50.0,
              child: Image.asset("assets/images/pokeball.png", width: 300, fit: BoxFit.fitWidth,),
          ),

          Positioned(
              top: 80.0,
              left: 10.0,
              child: Text("Pokedex", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 70.0, ),)),

          Positioned(
            top: 180.0,
            bottom: 0.0,
            width: width,
            child: Column(
            children: [
              pokedex.length != null ?  Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1,
                        childAspectRatio: 1.4,
                        mainAxisSpacing: 1,
                      ),
                      itemBuilder: (context, index) {
                        var type = pokedex[index]["type"][0];
                        return InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: type == "Grass" ? Colors.green : type == "Fire" ? Colors.red : type == "water" ? Colors.blue
                                    : type == "Electric" ? Colors.yellowAccent : type == 'Rock' ? Colors.grey : type == 'Ground' ? Colors.brown
                                    : type == "Psychic" ? Colors.indigo : type == "Fighting" ? Colors.orange : type == "Bug" ? Colors.lightGreenAccent
                                    : type == "Ghost" ? Colors.deepPurple : type == 'Normal' ? Colors.grey : type == "Poison" ? Colors.deepPurpleAccent
                                    : Colors.pink,
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                      child: Image.asset("assets/images/pokeball.png", fit: BoxFit.fitHeight, height: MediaQuery.of(buildContext).size.height / 6,),
                                      right: -10.0,
                                    bottom: -10.0,
                                  ),
                                  Positioned(
                                      child: Text( pokedex[index]["name"], style: TextStyle( fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white, ), ),
                                    top: 20.0,
                                    left: 10.0,
                                  ),

                                  Positioned(
                                    child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0,),
                                          child: Text( type.toString(), style: TextStyle( color: Colors.white, ), ),
                                    ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                        color: Colors.black26,
                                      ),
                                    ),
                                    top: 50.0,
                                    left: 20.0,
                                  ),

                                  Positioned(
                                      child: Hero(
                                          tag: index,
                                          child: CachedNetworkImage(imageUrl: pokedex[index]["img"], fit: BoxFit.fitHeight, height: MediaQuery.of(buildContext).size.height / 6, )),
                                    bottom: 5.0,
                                    right: 5.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Pokemon_Detail_Screen(
                              pokemonDetail: pokedex[index],
                              color: type == "Grass" ? Colors.green : type == "Fire" ? Colors.red : type == "water" ? Colors.blue
                                  : type == "Electric" ? Colors.yellowAccent : type == 'Rock' ? Colors.grey : type == 'Ground' ? Colors.brown
                                  : type == "Psychic" ? Colors.indigo : type == "Fighting" ? Colors.orange : type == "Bug" ? Colors.lightGreenAccent
                                  : type == "Ghost" ? Colors.deepPurple : type == 'Normal' ? Colors.grey : type == "Poison" ? Colors.deepPurpleAccent
                                  : Colors.pink,
                              heroTag: index,
                            ) ));
                          },
                        );
                      },
                      itemCount: pokedex.length,
                  ),
              ) : Center(
                child: CircularProgressIndicator(),
              ),
            ],
                    ),
          ),
        ],
      ),
    );
  }

  void fetch_Pokemon_Data()
  {
      var url = Uri.https("raw.githubusercontent.com","/Biuni/PokemonGO-Pokedex/master/pokedex.json");
      http.get(url).then((value) {

        if( value.statusCode == 200 )
          {
            // print(value.statusCode);
            // print( value.body );
            var decodedJsonData = jsonDecode(value.body);
            // print(decodedJsonData);
            // print("#############################################################################################");
            pokedex = decodedJsonData["pokemon"];
            // print(pokedex);
            // print(pokedex[0]);
            // print(pokedex[0]["id"]);
            // print(pokedex[0]["name"]);
            setState(() {});
          }
      });
  }
}