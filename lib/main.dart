import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/account.dart';
import 'package:flutter_application_1/pages/bateria.dart';
import 'package:flutter_application_1/pages/configuracion.dart';
import 'package:flutter_application_1/pages/home.dart';

void main() {
  runApp(MaterialApp(
    home: const Home(),
    routes: <String, WidgetBuilder>{
      Configuracion.routeName: (BuildContext context) => const Configuracion(),
      Account.routeName: (BuildContext context) => const Account(),
      Bateria.routeName: (BuildContext contex) => const Bateria()
    },
  ));
}
