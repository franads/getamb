import 'package:flutter/material.dart';

class Carteita extends StatefulWidget {
  const Carteita({super.key});

  @override
  State<Carteita> createState() => _CarteitaState();
}

class _CarteitaState extends State<Carteita> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Carteira"),
    );
  }
}