import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pokemon_Detail_Screen extends StatefulWidget {

  final pokemonDetail;
  final Color color;
  final int heroTag;

  const Pokemon_Detail_Screen({super.key, required this.pokemonDetail, required this.color, required this.heroTag,});

  @override
  State<Pokemon_Detail_Screen> createState() => _Pokemon_Detail_ScreenState();
}

class _Pokemon_Detail_ScreenState extends State<Pokemon_Detail_Screen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: widget.color,
      body: Stack(
        alignment: Alignment.center,
        children: [

          Positioned(
              top: 20.0,
              left: 15.0,
              child: IconButton(onPressed: (){ Navigator.pop(context); }, icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.0,))),

          Positioned(
              top: 80.0,
              left: 30.0,
              child: Text( widget.pokemonDetail["name"], style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white, ), )),

          Positioned(
              top: 120.0,
              left: 30.0,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0),),
                    color: Colors.black26,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0,),
                    child: Text( widget.pokemonDetail["type"].join(", ") , style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white,), ),
                  )),
          ),


          Positioned(
            top: height * 0.26,
            right: -30.0,
            child: Image.asset("assets/images/pokeball.png", height: 200.0, fit: BoxFit.fitHeight, ),
          ),

          Positioned(
            bottom: 0.0,
            child: Container(
              width: width,
              height: height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only( topRight: Radius.circular(50.0), topLeft: Radius.circular(50.0), ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 30.0,),
                  
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Name", style: TextStyle( fontSize: 20.0, color: Colors.blueGrey ),),
                              width: width * 0.4,
                            ),
                            Container(
                              child: Text(widget.pokemonDetail["name"], style: TextStyle( fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold, ),),
                            ),
                          ],
                        ),
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Height", style: TextStyle( fontSize: 20.0, color: Colors.blueGrey ),),
                              width: width * 0.4,
                            ),
                            Container(
                              child: Text(widget.pokemonDetail["height"], style: TextStyle( fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold, ),),
                            ),
                          ],
                        ),
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Weight", style: TextStyle( fontSize: 20.0, color: Colors.blueGrey ),),
                              width: width * 0.4,
                            ),
                            Container(
                              child: Text(widget.pokemonDetail["weight"], style: TextStyle( fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold, ),),
                            ),
                          ],
                        ),
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Spawn Time", style: TextStyle( fontSize: 20.0, color: Colors.blueGrey ),),
                              width: width * 0.4,
                            ),
                            Container(
                              child: Text(widget.pokemonDetail["spawn_time"], style: TextStyle( fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold, ),),
                            ),
                          ],
                        ),
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Candy", style: TextStyle( fontSize: 20.0, color: Colors.blueGrey ),),
                              width: width * 0.4,
                            ),
                            Container(
                              child: Text(widget.pokemonDetail["candy"], style: TextStyle( fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold, ),),
                            ),
                          ],
                        ),
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Egg", style: TextStyle( fontSize: 20.0, color: Colors.blueGrey ),),
                              width: width * 0.4,
                            ),
                            Container(
                              child: Text(widget.pokemonDetail["egg"], style: TextStyle( fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold, ),),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Number", style: TextStyle( fontSize: 20.0, color: Colors.blueGrey ),),
                              width: width * 0.4,
                            ),
                            Container(
                              child: Text(widget.pokemonDetail["num"], style: TextStyle( fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold, ),),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Weakness", style: TextStyle( fontSize: 20.0, color: Colors.blueGrey ),),
                              width: width * 0.4,
                            ),
                            Container(
                              child: Text(widget.pokemonDetail["weaknesses"].join(", "), style: TextStyle( fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold, ),),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text("Evolution", style: TextStyle( fontSize: 20.0, color: Colors.blueGrey ),),
                                width: width * 0.4,
                              ),

                              widget.pokemonDetail["next_evolution"] != null ? SizedBox(
                                height: 20.0,
                                width: width * 0.85,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(right: 8.0,),
                                        child: Text( widget.pokemonDetail["next_evolution"][index]["name"], style: TextStyle( fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold, ), ),
                                      );
                                    },
                                  itemCount: widget.pokemonDetail["next_evolution"].length,
                                ),
                              ) : Text("Maxed Out", style: TextStyle( fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold, ), ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text("Previous Form", style: TextStyle( fontSize: 20.0, color: Colors.blueGrey ),),
                                width: width * 0.4,
                              ),

                              widget.pokemonDetail["prev_evolution"] != null ? SizedBox(
                                height: 20.0,
                                width: width * 0.85,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 12.0,),
                                      child: Text( widget.pokemonDetail["prev_evolution"][index]["name"], style: TextStyle( fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold, ), ),
                                    );
                                  },
                                  itemCount: widget.pokemonDetail["prev_evolution"].length,
                                ),
                              ) : Text("Just Hatched", style: TextStyle( fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold, ), ),
                            ],
                          ),
                        ),
                      ),
                  
                  
                    ],
                  ),
                ),
              ),

            ),
          ),

          Positioned(
            top: height * 0.26,
              left: (width / 2) - 100.0,
              child: Hero(
                  tag: widget.heroTag,
                  child: CachedNetworkImage( imageUrl: widget.pokemonDetail["img"], fit: BoxFit.fitHeight, height: 200, )),
          ),

        ],
      ),
    );
  }
}
