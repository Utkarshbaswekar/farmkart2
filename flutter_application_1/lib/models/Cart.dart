import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Fruits.dart';
import 'package:flutter_application_1/models/dry.dart';
import 'package:flutter_application_1/models/veg.dart';

class Cart extends ChangeNotifier {
  // 1. List one fruits lists
  List<Fruits> CartItemList = [
    Fruits(
      image: 'assets/images/fruits/apple2.jpeg',
      name: 'Apple',
      price: '224/-',
    ),
    Fruits(
      image: 'assets/images/fruits/coconut.jpeg',
      name: 'cocunut',
      price: '446/-',
    ),
    Fruits(
      image: 'assets/images/fruits/grapes.jpeg',
      name: 'Grapes',
      price: '447/-',
    ),
    Fruits(
        image: 'assets/images/fruits/mango.jpeg',
        name: 'Mangoes',
        price: '448/-'),
    Fruits(
        image: 'assets/images/fruits/papaya.jpeg',
        name: 'Pappaya',
        price: '500/-'),
  ];

  // list two vegitables list
  List<Veg> VegItemList = [
    Veg(
      image: 'assets/images/vegi/chilly.jpeg',
      name: 'Chilly',
      price: '24/-',
    ),
    Veg(
      image: 'assets/images/vegi/fenu.jpeg',
      name: 'Fenugreek',
      price: '46/-',
    ),
    Veg(
      image: 'assets/images/vegi/onion.jpeg',
      name: 'Onion',
      price: '447/-',
    ),
    Veg(image: 'assets/images/vegi/palak.jpeg', name: 'Palak', price: '48/-'),
    Veg(image: 'assets/images/vegi/tomato.jpeg', name: 'Tomato', price: '50/-'),
  ];

  // List three dry fruits lists .....
  List<Dry> DryCartItemList = [
    Dry(
      image: 'assets/images/dryfruits/almonds.jpeg',
      name: 'Almonds',
      price: '2437/-',
    ),
    Dry(
      image: 'assets/images/dryfruits/basketSplash.jpg',
      name: 'BasketSplash',
      price: '4633/-',
    ),
    Dry(
      image: 'assets/images/dryfruits/cashunuts.jpeg',
      name: 'Cashunuts',
      price: '4437/-',
    ),
    Dry(
        image: 'assets/images/dryfruits/raisins.jpeg',
        name: 'Raisins',
        price: '7848/-'),
    Dry(
        image: 'assets/images/dryfruits/walnuts.jpeg',
        name: 'Walnuts',
        price: '7850/-'),
  ];

///////////////////////////////////////////////
  // // get pet list

  List<Fruits> getCartItemList() {
    return CartItemList;
  }

  //for vegi items

  List<Veg> getVegiCartItemList() {
    return VegItemList;
  }

  //  get dry fruits

  List<Dry> getDryCartItemList() {
    return DryCartItemList;
  }

//////////////////////////////////////////////////////////
  //usercart

  List<Fruits> userCart = [];

  //usercart2   for vegi
  List<Veg> userCart2 = [];

  // usercart3  for dryfruits

  List<Dry> userCart3 = [];

///////////////////////////////////////////////////////////

  //getUserCart
  List<Fruits> getuserCart() {
    return userCart;
  }

  //get usercart for vegi

  List<Veg> getVegiuserCart() {
    return userCart2;
  }

  // get dryfruits userCart

  List<Dry> getuserCart3() {
    return userCart3;
  }

////////////////////////////////////////////////

  // adding items- fruits
  void additem(Fruits petti) {
    userCart.add(petti);

    notifyListeners();
  }

  //Adding for vegi- fruits

  void additem2(Veg petti2) {
    userCart2.add(petti2);

    notifyListeners();
  }

  // adding for --- dryfrits ---

  void additem3(Dry petti3) {
    userCart3.add(petti3);

    notifyListeners();
  }

//////////////////////////////////////

  // deleting items
  void remove(Fruits remove1) {
    userCart.remove(remove1);
    notifyListeners();
  }

  // for vegi remove
  void remove2(Veg remove2) {
    userCart2.remove(remove2);
    notifyListeners();
  }

  // for dryfruits

  void remove3(Dry remove3) {
    userCart3.remove(remove3);
    notifyListeners();
  }

///////////////////////////////
}
