// ignore_for_file: must_be_immutable

import 'package:carbazaar/View/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Map<int, Color> color = {
    50: const Color.fromRGBO(253, 96, 1, .1),
    100: const Color.fromRGBO(253, 96, 1, .2),
    200: const Color.fromRGBO(253, 96, 1, .3),
    300: const Color.fromRGBO(253, 96, 1, .4),
    400: const Color.fromRGBO(253, 96, 1, .5),
    500: const Color.fromRGBO(253, 96, 1, .6),
    600: const Color.fromRGBO(253, 96, 1, .7),
    700: const Color.fromRGBO(253, 96, 1, .8),
    800: const Color.fromRGBO(253, 96, 1, .9),
    900: const Color.fromRGBO(253, 96, 1, 1),
  };

  @override
  Widget build(BuildContext context) {
    MaterialColor colorCustom = MaterialColor(0xFF880E4F, color);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: const Splashscreen(),
    );
  }
}
