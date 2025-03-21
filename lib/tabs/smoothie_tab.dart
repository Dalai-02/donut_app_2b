import 'package:donut_app_2b/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  //Lista de Donas
  final List smoothiesOnSale = [ 
    //[doonutFlavor, smoothieStore, smoothiePrice, smoothieColor, imageName]
    ["Cherry", "Starbucks", "36", Colors.red, "lib/images/cereza_smoothie.png"],
    ["Coconut", "Bombuté", "54", Colors.brown,  "lib/images/coco_smoothie.png"],
    ["Lemon", "Bova Tea", "84", Colors.green, "lib/images/limon_smoothie.png"],
    ["Apple", "TaBoo", "95", Colors.red, "lib/images/manzana_smoothie.png"],
    ["Melon", "POP Tea", "36", Colors.pink, "lib/images/melon_smoothie.png"],
    ["Orange", "Gong Cha", "54", Colors.orange,  "lib/images/naranja_smoothie.png"],
    ["Banana", "Tapioca Flavors", "84", Colors.yellow, "lib/images/platano_smoothie.png"],
    ["Eggplant", "Bubbaplop", "95", Colors.purple, "lib/images/berenjena_smoothie.png"],
   ];

  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder( //Grid View parametro para acomodar elementos en una cuadricula
      // Elementos de nuestra lista
      itemCount: smoothiesOnSale.length, //Numero de elementos itemCount
      padding: const EdgeInsets.all(15),
      //Organiza como distribuir
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( //
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto (proporción de aspecto)
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothieStore: smoothiesOnSale[index][1],
          smoothiePrice: smoothiesOnSale[index][2],
          smoothieColor: smoothiesOnSale[index][3],
          imageName: smoothiesOnSale[index][4],
        );
      });
  }
}