import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Cart.dart';
import 'package:flutter_application_1/models/Fruits.dart';
import 'package:flutter_application_1/models/dry.dart';
import 'package:flutter_application_1/models/veg.dart';
import 'package:provider/provider.dart';

class VegCartcontoller extends StatefulWidget {
  final Veg vegi;

  const VegCartcontoller({super.key, required this.vegi});

  @override
  State<VegCartcontoller> createState() => _VegCartcontollerState();
}

class _VegCartcontollerState extends State<VegCartcontoller> {
  void removeitem2() {
    Provider.of<Cart>(context, listen: false).remove2(widget.vegi);

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
        leading: Image.asset(widget.vegi.image),
        title: Text(widget.vegi.name),
        subtitle: Text(widget.vegi.price),
        trailing: IconButton(
            onPressed: () {
              removeitem2();
            },
            icon: Icon(Icons.delete)),
      ),
    ]);
  }
}
