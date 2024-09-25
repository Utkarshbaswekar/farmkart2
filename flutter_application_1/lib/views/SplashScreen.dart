import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/page1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 240, 210),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 120, 255, 125),
          title: const Text("Farm-kart",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 0, 0))),
          centerTitle: true,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page1()),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(50)),
                    height: 500,
                    width: 500,
                    child: Image.asset('assets/images/dryfruits/111.jpg')),
              )
            ]));
  }
}
