import 'package:flutter/material.dart';
import 'package:stage_two/spashscreen.dart';
import 'package:stage_two/spashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG Stage One',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff410603),
        hintColor: const Color(0xffed4c4e).withOpacity(0.09),
        textTheme: const TextTheme(

          bodyText1:  TextStyle(
            color: Colors.black,
            // fontFamily: 'Montserrat',
            fontStyle: FontStyle.normal,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),

          bodyText2:  TextStyle(
              color: Colors.white,
              // fontFamily: 'Montserrat',
              height: 1.5,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 16
          ),

          headline1:  TextStyle(
            color: Color(0xff410603),
            // fontFamily: 'Montserrat',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            fontSize: 25,
          ),

          headline2:  TextStyle(
            color: Color(0xff410603),
            // fontFamily: 'Montserrat',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            fontSize: 20,
          ),


        ),
      ),
      home: const SplashScreen(),
    );
  }
}