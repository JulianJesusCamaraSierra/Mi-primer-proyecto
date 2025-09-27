import 'package:flutter/material.dart';

import '../util/item_tile.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class BurgerTab extends StatelessWidget{

  // list of donuts 
  List burgersOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName]
    ["Cheese Burger", "99", Colors.yellow, "lib/images/cheeseburger.png", "McDonalds"],
    ["Bacon Burger", "120", Colors.red, "lib/images/baconburger.png", "McDonalds"],
    ["travis Scott Burger", "999", Colors.brown, "lib/images/travisscottburger.png", "McDonalds"],
    ["Chicken Burger", "20", Colors.pink, "lib/images/chikenburger.png", "McDonalds"],
  ];

  @override
  Widget build(BuildContext context){
    return GridView.builder(
    itemCount: burgersOnSale.length,  
    padding: EdgeInsets.all(12),
    gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
        ), 
    itemBuilder: (context, index) {
      return ItemTile(
        itemFlavor: burgersOnSale[index][0],
        itemPrice: burgersOnSale[index][1],
        itemColor: burgersOnSale[index][2],
        imageName: burgersOnSale[index][3],
        itembrand: burgersOnSale[index][4],
        
      );
    },
    );
  }
}