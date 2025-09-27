import 'package:flutter/material.dart';

import '../util/item_tile.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class PizzaTab extends StatelessWidget{

  // list of donuts 
  List pizzasOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName]
["Pepperoni Pizza", "120", Colors.red, "lib/images/peperonipizza.png", "Little Caesars"],
["Mushroom Pizza", "135", Colors.yellow, "lib/images/funguspizza.png", "Little Caesars"],
["Veggie Pizza", "110", Colors.green, "lib/images/vegepizza.png", "Little Caesars"],
["Mr. Krabs' Pizza", "145", Colors.brown, "lib/images/doncangrejopizza.png", "Little Caesars"],

  ];

  @override
  Widget build(BuildContext context){
    return GridView.builder(
    itemCount: pizzasOnSale.length,  
    padding: EdgeInsets.all(12),
    gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
        ), 
    itemBuilder: (context, index) {
      return ItemTile(
        itemFlavor: pizzasOnSale[index][0],
        itemPrice: pizzasOnSale[index][1],
        itemColor: pizzasOnSale[index][2],
        imageName: pizzasOnSale[index][3],
        itembrand: pizzasOnSale[index][4],
      );
    },
    );
  }
}