import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerStore;
  final String burgerPrice; 
  final dynamic burgerColor; //dynamic será un tipo de color
  final String imageName;

  const BurgerTile({super.key, required this.burgerFlavor, required this.burgerStore, required this.burgerPrice, this.burgerColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50],
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
                    color: burgerColor[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                  child: Text('\$$burgerPrice' , 
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: burgerColor[800],),
                  ),
                )
              ],
            ),

            //burger Picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
              child: Image.asset(imageName),
            ),

            //burger Text
            Text(burgerFlavor,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            //Para tener un espacio entre textos
            const SizedBox(
              height: 4
            ),
            // Agregar texto a la tienda
            Text(burgerStore,
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
