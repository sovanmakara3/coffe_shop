

import 'package:flutter/cupertino.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier{
  // coffee for sale lise
  final List<Coffee> _shop = [
    // americano coffee
    Coffee(
        name: 'Americano',
        price: '4.10',
        imagePath: 'lib/images/americano.png',
    ),
    // latte
    Coffee(
      name: 'Latte',
      price: '3.90',
      imagePath: 'lib/images/latte.png',
    ),
    //milktea
    Coffee(
      name: 'Milk Tea',
      price: '3.10',
      imagePath: 'lib/images/milktea.png',
    ),
    //iced coffee
    Coffee(
      name: 'Ice Coffee',
      price: '4.85',
      imagePath: 'lib/images/iced-coffee.png',
    ),
    // cappuccino
    Coffee(
      name: 'Cappuccino',
      price: '3.00',
      imagePath: 'lib/images/cappuccino.png',
    ),
    // espresso
    Coffee(
      name: 'Espresso',
      price: '5.30',
      imagePath: 'lib/images/espresso.png',
    ),
  ];

// user cart
List<Coffee> _userCart =  [];

// get coffee list
List<Coffee> get coffeeShop => _shop;

// get user cart
List<Coffee> get userCart => _userCart;

// add item to cart
void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  notifyListeners();
}

// remove item from cart
void removeItemFromCart(Coffee coffee){
  _userCart.remove(coffee);
  notifyListeners();
}

}
