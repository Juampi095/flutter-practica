import 'package:flutter/material.dart';

class Bateria extends StatelessWidget {
  const Bateria({Key? key}) : super(key: key);
  static const String routeName = "./bateria.dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bateria")),
      body: const Center(
        child: Text("Bateria"),
      ),
    );
  }
}
