import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {
  const Alarm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.alarm,
              size: 160,
              color: Color.fromARGB(255, 216, 154, 74),
            ),
            Text("Primer tab")
          ],
        ),
      ),
    );
  }
}
