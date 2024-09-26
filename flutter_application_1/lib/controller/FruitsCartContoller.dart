import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Cart.dart';
import 'package:flutter_application_1/models/Fruits.dart';
import 'package:flutter_application_1/models/dry.dart';
import 'package:flutter_application_1/models/veg.dart';
import 'package:provider/provider.dart';

class Cartcontoller extends StatefulWidget {
  final Fruits fru;

  Cartcontoller({super.key, required this.fru});

  @override
  State<Cartcontoller> createState() => _CartcontollerState();
}

class _CartcontollerState extends State<Cartcontoller> {
  void removeitem() {
    Provider.of<Cart>(context, listen: false).remove(widget.fru);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Sucessfully Deleted"),
              // content: Text("Check your Cart")
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        leading: Image.asset(widget.fru.image),
        title: Text(widget.fru.name),
        subtitle: Text(widget.fru.price),
        trailing: IconButton(
            onPressed: () {
              removeitem();
            },
            icon: Icon(Icons.delete)),
      ),
    ]);
  }
}
