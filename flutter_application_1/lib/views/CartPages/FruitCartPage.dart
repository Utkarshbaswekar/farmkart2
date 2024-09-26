import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/FruitsCartContoller.dart';
import 'package:flutter_application_1/controller/VegCartController.dart';
import 'package:flutter_application_1/controller/dryCartContoller.dart';
import 'package:flutter_application_1/models/Cart.dart';

import 'package:flutter_application_1/models/Fruits.dart';
import 'package:flutter_application_1/models/dry.dart';
import 'package:flutter_application_1/models/veg.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: const Color.fromARGB(255, 218, 255, 220),
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 120, 255, 125),
                title: const Text("Fruits Cart",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Color.fromARGB(255, 0, 0, 0))),
                centerTitle: true,
              ),
              body: Column(children: [
                const SizedBox(height: 20),
                const Text('FruitsCart',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                Expanded(
                    child: ListView.builder(
                        itemCount: value.userCart.length,
                        itemBuilder: (context, index) {
                          Fruits individualitem = value.getuserCart()[index];
                          return Cartcontoller(fru: individualitem);
                        })),
              ]),
            ));
  }
}
