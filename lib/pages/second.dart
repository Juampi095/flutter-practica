import 'package:flutter/material.dart';

class Watch extends StatelessWidget {
  const Watch({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent[300],
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.watch_later,
              size: 160,
              color: Color.fromARGB(255, 223, 221, 104),
            ),
            Text("Segundo tab")
          ],
        )));
  }
}
