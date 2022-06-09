import 'package:fahadshabir/Screens/FindFoodScreen.dart';
import 'package:fahadshabir/Screens/HomeScreen.dart';
import 'package:fahadshabir/Screens/LoginScreen.dart';
import 'package:fahadshabir/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:const AppBarTheme(
          color: Colors.white
        ),
        primarySwatch: Colors.orange
      ),
      home: SplashScreen(),
      );
  }
}
