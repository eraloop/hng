import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stage_one/home.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
            (route) => false,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/mqECftWG_400x400.jpg", height: 100, width: 100)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text("HNG X",
                  style: Theme.of(context).textTheme.headline1),
            ),
        ],
      ),
    );
  }
}
