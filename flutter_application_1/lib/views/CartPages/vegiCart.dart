import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/VegCartController.dart';
import 'package:flutter_application_1/models/Cart.dart';
import 'package:flutter_application_1/models/veg.dart';
import 'package:provider/provider.dart';

class CartPage2 extends StatefulWidget {
  const CartPage2({super.key});

  @override
  State<CartPage2> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage2> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: const Color.fromARGB(255, 218, 255, 220),
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 120, 255, 125),
                title: const Text("Vegitables Cart",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Color.fromARGB(255, 0, 0, 0))),
                centerTitle: true,
              ),
              body: Column(children: [
                const SizedBox(height: 20),
                Expanded(
                    child: ListView.builder(
                        itemCount: value.userCart2.length,
                        itemBuilder: (context, index) {
                          Veg indi = value.getVegiuserCart()[index];
                          return VegCartcontoller(vegi: indi);
                        }))
              ]),
            ));
  }
}
