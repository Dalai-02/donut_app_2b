import 'package:donut_app_2b/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {

  final List pancakeOnSale = [
    // [pancakeFlavor, pancakeStore, pancakePrice, pancakeColor, imageName]
    ["Froggy","Cantaritos","20",Colors.orange, "lib/images/frogg_pancake.png"],
    ["All clasic","Colom","120",Colors.blueGrey,  "lib/images/frutita_pancake.png"],
    ["Absolut", "Donde","15",Colors.pink, "lib/images/mieleros_pancake.png"],
    ["Piketito","Mixe","90",Colors.purple, "lib/images/morero_pancake.png"],
    ["Normales","Kukis","70",Colors.yellow, "lib/images/normales_pancake.png"],
    ["Roblox","Vans","37",Colors.blue,  "lib/images/roblo_pancake.png"],
    ["Rockk", "HXDERBEZ","10",Colors.brown, "lib/images/rock_pancake.png"],
    ["BunnyBun","lol","95",Colors.red, "lib/images/bun_pancake.png"],
  ];

  PancakesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder( //Grid View parametro para acomodar elementos en una cuadricula
      // Elementos de nuestra lista
      itemCount: pancakeOnSale.length, //Numero de elementos itemCount
      padding: const EdgeInsets.all(18),
      //Organiza como distribuir
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( //
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto (proporción de aspecto)
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakeOnSale[index][0],
          pancakeStore: pancakeOnSale[index][1],
          pancakePrice: pancakeOnSale[index][2],
          pancakeColor: pancakeOnSale[index][3],
          imageName: pancakeOnSale[index][4],
        );
      });
  }
}