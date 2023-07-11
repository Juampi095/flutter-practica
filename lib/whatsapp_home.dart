import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/calls.dart';
import 'package:flutter_application_1/pages/camera_alt.dart';
import 'package:flutter_application_1/pages/chat_list.dart';
import 'package:flutter_application_1/pages/contacts.dart';
import 'package:flutter_application_1/pages/status.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);
  @override
  WhatsAppHomeState createState() => WhatsAppHomeState();
}

class WhatsAppHomeState extends State<WhatsAppHome>
    with TickerProviderStateMixin {
  TabController? controller; //Se crea un controlador de tipo TabController

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this, initialIndex: 1);
    //initialIndex indica el indice de la pestaña que se muestra al iniciar la app
  } //Se inicializa el controlador

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          bottom: TabBar(controller: controller, tabs: const <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "Chats"),
            Tab(text: "Estados"),
            Tab(text: "Llamadas"),
          ]),
        ),
        body: TabBarView(controller: controller, children: const [
          Camera(),
          ChatList(),
          Status(),
          Calls(), //El orden del TabBarView debe coincidir con el oreden del TabBar
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            var route = MaterialPageRoute(
                builder: (context) =>
                    const Contacts()); //Se crea una ruta para la pagina de contactos
            Navigator.push(context, route); //Se navega a la pagina de contactos
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.message),
        ));
  }
}
