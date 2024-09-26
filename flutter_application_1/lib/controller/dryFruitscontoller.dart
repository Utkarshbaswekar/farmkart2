import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/dry.dart';

class DryfruitController extends StatelessWidget {
  final Dry dry;
  void Function()? onPressed;
  DryfruitController({super.key, required this.dry, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 189, 232, 241),
            borderRadius: BorderRadiusDirectional.circular(90)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image
            Container(
              height: 70,
              width: 70,
              child: Image.asset(dry.image),
            ),

            //name

            Text(dry.name,
                style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    color: const Color.fromARGB(255, 0, 0, 0))),

            // price
            Text(dry.price,
                style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    color: const Color.fromARGB(255, 0, 0, 0))),

            //    Add

            Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 91, 207, 112),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: onPressed,
                    child: const Text('Add',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 0, 0)))))
          ],
        ),
      ),
    );
  }
}
