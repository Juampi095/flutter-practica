import 'package:flutter/material.dart';
import 'package:flutter_application_1/whatsapp_home.dart';

void main() {
  runApp(const MaterialApp(
    home: WhatsAppHome(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterChat",
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(18, 170, 152, 1),
        secondaryHeaderColor: const Color.fromRGBO(24, 209, 92, 1),
      ),
      debugShowCheckedModeBanner: false,
      home: const WhatsAppHome(),
    );
  }
}
