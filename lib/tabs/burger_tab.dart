import 'package:donut_app_2b/utils/burguer_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  
  //Lista de Donas
  final List burgersOnSale = [ 
    //[doonutFlavor, burgerStore, burgerPrice, burgerColor, imageName]
    ["The Classic", "Burger's", "36", Colors.blue, "lib/images/classic_burger.png"],
    ["The Special", "Burger's", "45", Colors.red, "lib/images/special_burger.png"],
    ["Double Flavor", "Burger's", "84", Colors.purple, "lib/images/doublefLavor_Burger.png"],
    ["The Gourmet", "Burger's", "95", Colors.brown, "lib/images/gourmet_burger.png"],
    ["Supreme", "Burger's", "36", Colors.blue, "lib/images/supreme_burger.png"],
    ["Roger Classic", "Burger's", "45", Colors.red, "lib/images/roger_burger.png"],
    ["Alan Classic", "Burger's", "84", Colors.purple, "lib/images/alan_burger.png"],
    ["Chilli Spicy", "Burger's", "75", Colors.brown, "lib/images/spicy_burger.png"],
   ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder( //Grid View parametro para acomodar elementos en una cuadricula
      // Elementos de nuestra lista
      itemCount: burgersOnSale.length, //Numero de elementos itemCount
      padding: const EdgeInsets.all(12),
      //Organiza como distribuir
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( //
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto (proporción de aspecto)
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgersOnSale[index][0],
          burgerStore: burgersOnSale[index][1],
          burgerPrice: burgersOnSale[index][2],
          burgerColor: burgersOnSale[index][3],
          imageName: burgersOnSale[index][4],
        );
      });
  }
}