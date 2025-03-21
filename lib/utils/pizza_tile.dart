import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaStore;
  final String pizzaPrice; 
  final dynamic pizzaColor; //dynamic será un tipo de color
  final String imageName;

  const PizzaTile({super.key, required this.pizzaFlavor, required this.pizzaStore, required this.pizzaPrice, this.pizzaColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[50],
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
                    color: pizzaColor[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                  child: Text('\$$pizzaPrice' , 
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: pizzaColor[800],),
                  ),
                )
              ],
            ),

            //Pizza Picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
              child: Image.asset(imageName),
            ),

            //Pizza Text
            Text(pizzaFlavor,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            //Para tener un espacio entre textos
            const SizedBox(
              height: 4
            ),
            // Agregar texto a la tienda
            Text(pizzaStore,
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
