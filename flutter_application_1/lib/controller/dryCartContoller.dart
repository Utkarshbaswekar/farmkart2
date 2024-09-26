import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Cart.dart';
import 'package:flutter_application_1/models/Fruits.dart';
import 'package:flutter_application_1/models/dry.dart';
import 'package:flutter_application_1/models/veg.dart';
import 'package:provider/provider.dart';

class dryCartcontoller extends StatefulWidget {
  final Dry dryii;

  dryCartcontoller({super.key, required this.dryii});

  @override
  State<dryCartcontoller> createState() => _dryCartcontollerState();
}

class _dryCartcontollerState extends State<dryCartcontoller> {
  void removeitem3() {
    Provider.of<Cart>(context, listen: false).remove3(widget.dryii);

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
        leading: Image.asset(widget.dryii.image),
        title: Text(widget.dryii.name),
        subtitle: Text(widget.dryii.price),
        trailing: IconButton(
            onPressed: () {
              removeitem3();
            },
            icon: Icon(Icons.delete)),
      ),
    ]);
  }
}
