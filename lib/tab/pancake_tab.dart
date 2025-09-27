import 'package:flutter/material.dart';

import '../util/item_tile.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class PancakeTab extends StatelessWidget{

  // list of donuts 
  List pancakesOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName]
["Classic Hotcake", "50", Colors.orange, "lib/images/classicpankace.png", "IHOP"],
["Blueberry Hotcake", "65", Colors.blue, "lib/images/bluberypancake.png", "IHOP"],
["Strawberry Hotcake", "72", Colors.pink, "lib/images/strawberrypancake.png", "IHOP"],
["Nutella Hotcake", "90", Colors.brown, "lib/images/nutellapankaque.png", "IHOP"],
  ];

  @override
  Widget build(BuildContext context){
    return GridView.builder(
    itemCount: pancakesOnSale.length,  
    padding: EdgeInsets.all(12),
    gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
        ), 
    itemBuilder: (context, index) {
      return ItemTile(
        itemFlavor: pancakesOnSale[index][0],
        itemPrice: pancakesOnSale[index][1],
        itemColor: pancakesOnSale[index][2],
        imageName: pancakesOnSale[index][3],
        itembrand: pancakesOnSale[index][4],
      );
    },
    );
  }
}