import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/FruitsCartContoller.dart';
import 'package:flutter_application_1/controller/Gnav.dart';
import 'package:flutter_application_1/controller/VegCartController.dart';
import 'package:flutter_application_1/controller/dryCartContoller.dart';
import 'package:flutter_application_1/models/Cart.dart';

import 'package:flutter_application_1/models/Fruits.dart';
import 'package:flutter_application_1/models/dry.dart';
import 'package:flutter_application_1/models/veg.dart';
import 'package:provider/provider.dart';

class AllCartPage extends StatefulWidget {
  const AllCartPage({super.key});

  @override
  State<AllCartPage> createState() => _AllCartPageState();
}

class _AllCartPageState extends State<AllCartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: const Color.fromARGB(255, 218, 255, 220),
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 120, 255, 125),
                title: const Text("All in One-Cart",
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

                          return Cartcontoller(
                            fru: individualitem,
                          );
                        })),
                const Text('VegiCart',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                Expanded(
                    child: ListView.builder(
                        itemCount: value.userCart2.length,
                        itemBuilder: (context, index) {
                          Veg indi = value.getVegiuserCart()[index];
                          return VegCartcontoller(vegi: indi);
                        })),
                const Text('Dryfruit-Cart',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                Expanded(
                    child: ListView.builder(
                        itemCount: value.userCart3.length,
                        itemBuilder: (context, index) {
                          Dry indi = value.getuserCart3()[index];
                          return dryCartcontoller(dryii: indi);
                        })),
                Gnav()
              ]),
            ));
  }
}
