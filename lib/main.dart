import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: First(),
  ));
}

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Pantalla Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, //Esto nos permite colocar una ruta dentro del Stack
                  MaterialPageRoute(builder: (context) => const Second()));
            },
            child: const Text("Mostrar Pantalla")),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Pantalla Screen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              //El metodo pop toma el ultimo elemento del stack y nos permite volver a la primera clase
            },
            child: const Text("Ir hacia atras!")),
      ),
    );
  }
}
