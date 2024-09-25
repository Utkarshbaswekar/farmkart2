

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/page1.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Gnav extends StatefulWidget {
  const Gnav({super.key});

  @override
  State<Gnav> createState() => _GnavState();
}

class _GnavState extends State<Gnav> {
  @override
  Widget build(BuildContext context) {
    return Container(

            // padding : const EdgeInsets.symmetric(vertical:20),

            child: GNav(
                color: const Color.fromARGB(255, 70, 215, 75),
                activeColor: const Color.fromARGB(255, 23, 140, 2),
                mainAxisAlignment: MainAxisAlignment.center,
                tabs: [
              GButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page1()),
                    );
                  },
                  icon: Icons.home,
                  text: 'Home'),
              const GButton(icon: Icons.heat_pump_rounded, text: 'Wishlist')
            ]));
  }
}