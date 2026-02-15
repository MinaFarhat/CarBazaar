import 'dart:async';

import 'package:carbazaar/View/login.dart';
import 'package:carbazaar/View/mynavbar.dart';
import 'package:carbazaar/const/global.dart';
import 'package:carbazaar/const/shp.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Shp.loadloginfo().then((value) {
      if (Global.savedata == null ||
          (Global.savedata!.username == "non" &&
              Global.savedata!.password == "non")) {
        Timer(
            const Duration(seconds: 3),
            () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const Login())));
      } else {
        Timer(
            const Duration(seconds: 3),
            () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const Mynavbar())));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "OpenSans",
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/car2.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
