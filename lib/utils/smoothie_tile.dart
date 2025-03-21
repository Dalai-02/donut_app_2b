import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothieStore;
  final String smoothiePrice; 
  final dynamic smoothieColor; //dynamic será un tipo de color
  final String imageName;

  const SmoothieTile({super.key, required this.smoothieFlavor, required this.smoothieStore, required this.smoothiePrice, this.smoothieColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50],
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
                    color: smoothieColor[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                  child: Text('\$$smoothiePrice' , 
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: smoothieColor[800],),
                  ),
                )
              ],
            ),

            //smoothie Picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 34),
              child: Image.asset(imageName),
            ),

            //smoothie Text
            Text(smoothieFlavor,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            //Para tener un espacio entre textos
            const SizedBox(
              height: 4
            ),
            // Agregar texto a la tienda
            Text(smoothieStore,
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