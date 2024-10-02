import 'package:chatspro/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeshop = [
    Shoe(
      name: 'Blackcurrent',
      price: '4299',
      imagePath: 'lib/images/shoe_1.png',
      description: 'X Lows',
    ),
    Shoe(
      name: 'Pinecone',
      price: '4299',
      imagePath: 'lib/images/shoe_2.png',
      description: 'X Lows',
    ),
    Shoe(
      name: 'Dark',
      price: '4299',
      imagePath: 'lib/images/shoe_3.png',
      description: 'X Lows',
    ),
    Shoe(
      name: 'Ghost',
      price: '4299',
      imagePath: 'lib/images/ghost.png',
      description: 'X Lows',
    ),
    Shoe(
      name: 'Madagascar',
      price: '4299',
      imagePath: 'lib/images/shoe_4.png',
      description: 'X Lows',
    )
  ];

  // list of items in cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeshop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
