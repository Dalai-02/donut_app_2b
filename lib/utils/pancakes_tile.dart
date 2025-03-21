import 'package:flutter/material.dart';

class PancakeTile extends StatelessWidget {
  final String pancakeFlavor;
  final String pancakeStore;
  final String pancakePrice; 
  final dynamic pancakeColor; //dynamic será un tipo de color
  final String imageName;

  const PancakeTile({super.key, required this.pancakeFlavor, required this.pancakeStore, required this.pancakePrice, this.pancakeColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: pancakeColor[50],
        borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            //PriceTag
            Row(
              //Alinea a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pancakeColor[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                  child: Text('\$$pancakePrice' , 
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: pancakeColor[800],),
                  ),
                )
              ],
            ),

            //pancake Picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
              child: Image.asset(imageName),
            ),

            //pancake Text
            Text(pancakeFlavor,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            //Para tener un espacio entre textos
            const SizedBox(
              height: 4
            ),
            // Agregar texto a la tienda
            Text(pancakeStore,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),

            //Love icon + add buton
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border, 
                    color: Colors.pink[200]
                  ),
                   
                const Text(
                  "Add",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  
                  ),
                ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}