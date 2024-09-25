import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Cart.dart';
import 'package:flutter_application_1/views/SplashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => const MaterialApp(
            color: Color.fromARGB(255, 86, 249, 91),
            debugShowCheckedModeBanner: false,
            home: SplashScreen()));
  }
}
