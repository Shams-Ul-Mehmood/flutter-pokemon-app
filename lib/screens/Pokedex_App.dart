import 'package:flutter/material.dart';

import 'Pokemon.dart';

class Pokedex_App extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return MaterialApp(
      title: "Pokedex App",
      color: Colors.green,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Pokemon(),
    );
  }
}