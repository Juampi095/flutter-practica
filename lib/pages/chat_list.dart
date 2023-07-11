import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/chat_model.dart';
import 'package:flutter_application_1/pages/chat_screen.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);
  @override
  ChatListState createState() => ChatListState();
}

class ChatListState extends State {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, index) => Column(
        children: [
          const Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(messageData[index].imageUrl),
            ), //Se obtiene la imagen del chat
            title: Row(
                //Se crea una fila para alinear el texto
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Se alinea el texto
                children: [
                  Text(
                    messageData[index].name, //Se obtiene el nombre del chat
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    messageData[index].time, //Se obtiene la hora del chat
                    style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                  )
                ]),
            subtitle: Container(
                //Se crea un contenedor para el mensaje,con la propiedad subtitle se puede poner lo que seria en este caso el mensaje
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  messageData[index].messages,
                  style: const TextStyle(fontSize: 15.0, color: Colors.grey),
                ) //Messages se obtiene de chat_model, donde establecemos los parametros de cada chat
                ),
            onTap: () {
              var route = MaterialPageRoute(
                  builder: (BuildContext context) =>
                      ChatScreen(name: messageData[index].name));
              //Se obtiene el nombre del chat
              Navigator.of(context).push(route);
            },
          )
        ],
      ),
    ); //Con este metodo builder se podra utilizar los chats creados en chat_model //messageData proviene de la estructura creada en chat_model
  }
}
