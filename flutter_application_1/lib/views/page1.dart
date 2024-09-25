import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_application_1/controller/FruitsController.dart';
import 'package:flutter_application_1/controller/Gnav.dart';
import 'package:flutter_application_1/controller/dryFruitscontoller.dart';
import 'package:flutter_application_1/controller/vegContoller.dart';
import 'package:flutter_application_1/models/Cart.dart';
import 'package:flutter_application_1/models/Fruits.dart';
import 'package:flutter_application_1/models/dry.dart';
import 'package:flutter_application_1/models/veg.dart';
import 'package:flutter_application_1/views/AllCartItems.dart';

import 'package:flutter_application_1/views/CartPages/FruitCartPage.dart';
import 'package:flutter_application_1/views/CartPages/dryfruits,dart';

import 'package:flutter_application_1/views/CartPages/vegiCart.dart';

import 'package:provider/provider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
////////////////// add itemfun for fruits ////////////////////
  void additem(Fruits petti) {
    Provider.of<Cart>(context, listen: false).additem(petti);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
            title: Text("Fruits Added Sucessfully "),
            content: Text("Check your Cart")));
  }

//////////////// add item fun for veg ///////////////////
  void additem2(Veg petti2) {
    Provider.of<Cart>(context, listen: false).additem2(petti2);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
            title: Text(" Vegitables  Added Sucessfully "),
            content: Text("Check your Cart")));
  }

////////////////////// add item for dryfruits///////////////
  void additem3(Dry petti3) {
    Provider.of<Cart>(context, listen: false).additem3(petti3);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
            title: Text(" Dryfruits  Added Sucessfully "),
            content: Text("Check your Cart")));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Scaffold(
            backgroundColor: const Color.fromARGB(255, 218, 255, 220),
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 120, 255, 125),
              title: const Text("Farm-kart",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0))),
              centerTitle: true,
                  actions: [   
          IconButton(
            icon: const Icon(Icons.shopping_basket_rounded),
            onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AllCartPage()),
                          );
             
            },
          ),
    ],
            ),

            //drawer here
            drawer: Drawer(
                backgroundColor: const Color.fromARGB(255, 230, 238, 230),
                child: Column(children: [
                    
                  const DrawerHeader(
                      child: Icon(
                    Icons.card_travel,
                    size: 45,
                    color: Colors.black,

                  )),

                  // List tyle
                  ListTile(
                       onTap:  () {  
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AllCartPage()),
                          );
                       },
                      leading: const Icon(Icons.home_filled), title: const Text('My Order')  ),


                          ListTile(
                       onTap:  () {  
                           
                       },
                      leading: const Icon(Icons.home_filled), title: const Text('Categories')  ),



                      ListTile(
                       onTap:  () {  
                           
                       },
                      leading: const Icon(Icons.home_filled), title: const Text('WishList')  ),

               


                  ListTile(
                       onTap:  () {  
                           
                       },
                      leading: const Icon(Icons.arrow_right), title: const Text('Fruits')  ),

                  const ListTile(
                      leading: Icon(Icons.arrow_right),
                      title: Text('Dry Fruits')),

                  const ListTile(
                      leading: Icon(Icons.arrow_right),
                      title: Text('Vegitables')),


                       ListTile(
                       onTap:  () {  
                           
                       },
                      leading: const Icon(Icons.home_filled), title: const Text('About us')  ),

                ])),


                

            //body

            body: Column(children: [
              const SizedBox(height: 30),

              //////////////////Fruits items///////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    const Text(" Fruits Items ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color.fromARGB(255, 0, 0, 0))),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartPage()),
                          );
                        },
                        child: const Icon(Icons.card_travel_sharp))
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.CartItemList.length,
                    itemBuilder: (context, index) {
                      // Fruits f1 = Fruits(
                      //     image: 'assets/images/fruits/apple2.jpeg',
                      //     name: 'Apple',
                      //     price: '2234');
                      Fruits petti = value.getCartItemList()[index];

                      return FruitsController(
                          fruit1: petti, onPressed: () => additem(petti));
                    }),
              ),
              ////////////////////////////////////////////////////////////////////

              const SizedBox(height: 30),
              ////////////////////// The vegitables ////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    const Text("Vegitables Items ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color.fromARGB(255, 0, 0, 0))),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartPage2()),
                          );
                        },
                        child: const Icon(Icons.card_travel_sharp))
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.VegItemList.length,
                    itemBuilder: (context, index) {
                      // Fruits f1 = Fruits(
                      //     image: 'assets/images/vegi/ladyfing.jpeg',
                      //     name: 'vegi',
                      //     price: '2234');
                      Veg petti2 = value.getVegiCartItemList()[index];

                      return VegController(
                        veg1: petti2,
                        onPressed: () {
                          additem2(petti2);
                        },
                        // onPressed: () => additem(petti )
                      );
                    }),
              ),

              //////////////////////////////////////////////////////////////////

              const SizedBox(height: 30),

              ///////////////////////////// THE DRY FRUITS   ////////////////////////////////////////

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    const Text(" Dry Fruits Items",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color.fromARGB(255, 0, 0, 0))),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartPage3()),
                          );
                        },
                        child: const Icon(Icons.card_travel_sharp))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: value.DryCartItemList.length,
                    itemBuilder: (context, index) {
                      // Fruits f1 = Fruits(
                      //     image: 'assets/images/dryfruits/almonds.jpeg',
                      //     name: 'Apple',
                      //     price: '2234');

                      Dry petti3 = value.getDryCartItemList()[index];

                      return DryfruitController(
                        dry: petti3,
                        onPressed: () {
                          additem3(petti3);
                        },
                      );
                    }),
              ),

               const Gnav()
            ])));
  }
}
