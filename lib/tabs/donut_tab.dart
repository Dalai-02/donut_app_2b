import 'package:donut_app_2b/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //Lista de Donas
  final List donutsOnSale = [ 
    //[doonutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin Donuts", "54", Colors.red,  "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Costco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Walmart", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["katita","kitis y algo mas","100",Colors.pink, "lib/images/kat_donut.jpeg"],
    ["kitilibum","kitis y algo mas","401",Colors.deepPurple, "lib/images/kiti_donut.jpeg"],
    ["dononon", "seth roguen","700",Colors.cyan, "lib/images/guap_donut.jpeg"],
    ["allinone","cocina economica","95",Colors.orange, "lib/images/spagueti_donut.jpeg"],
   ]; 

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder( //Grid View parametro para acomodar elementos en una cuadricula
      // Elementos de nuestra lista
      itemCount: donutsOnSale.length, //Numero de elementos itemCount
      padding: const EdgeInsets.all(18),
      //Organiza como distribuir
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( //
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto (proporción de aspecto)
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      });
  }
}

