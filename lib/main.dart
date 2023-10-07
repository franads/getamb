
import 'package:flutter/material.dart';
import 'package:getamb/home.dart';
import 'package:getamb/splashScreen/splash_screen.dart';
 
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}