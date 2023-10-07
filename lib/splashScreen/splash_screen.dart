import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getamb/home.dart';





class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late AnimationController controller;
  startTime(){
    Timer(const Duration(seconds: 3), ()  async {
      Navigator.push(context, MaterialPageRoute(builder: (c)=>Home()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 225, 239),
      body: Center(
        child:CircularProgressIndicator()
         ),
    );

  }
}