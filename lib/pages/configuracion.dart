import 'package:flutter/material.dart';

class Configuracion extends StatelessWidget {
  const Configuracion({Key? key}) : super(key: key);
  static const String routeName = "./configuracion.dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Configuracion")),
      body: const Center(
        child: Text("Pantalla Configuracion"),
      ),
    );
  }
}
