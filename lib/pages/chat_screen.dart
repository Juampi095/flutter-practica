import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  const ChatScreen({Key? key, required this.name}) : super(key: key);

  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen>
    with TickerProviderStateMixin<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  //Se crea un controlador para el cuadro de texto
  final List<ChatMessage> messages0 = <ChatMessage>[];
  bool _isTyped = false;
  void _handleSubmit(String text) {
    _textController.clear(); //Se limpia el cuadro de texto
    setState(() {
      _isTyped = false;
    });
    ChatMessage messages = ChatMessage(
      text: text,
      animationController: AnimationController(
          duration: const Duration(milliseconds: 700),
          vsync: this), //Se crea una animacion para el mensaje
      name: widget.name,
    ); //Se crea un mensaje
    setState(() {
      messages0.insert(0, messages); //Se inserta el mensaje en la lista
      var data = messageData.firstWhere((t) =>
          t.name ==
          widget.name); //Se busca el mensaje en la lista a traves del nombre
      data.messages = messages.text; //Se asigna el mensaje a la lista
    });
    messages.animationController.forward(); //Se inicia la animacion
  }

  Widget _buildTextComposer() {
    return IconTheme(
        //Se crea un tema para el icono
        data: IconThemeData(color: Theme.of(context).primaryColor),
        child: Row(
          //Row debe ir acompañado de children
          children: <Widget>[
            Flexible(
                //Flexible se utiliza para que el cuadro de texto se adapte al tamaño de la pantalla
                child: TextField(
              controller: _textController,
              //Se le asigna el controlador al cuadro de texto
              onChanged: (String text) {
                setState(() {
                  _isTyped = text.isNotEmpty;
                  //Se crea un metodo para saber si el cuadro de texto esta vacio
                });
              },
              decoration:
                  const InputDecoration.collapsed(hintText: "Send a message"),
            )),
            //Se crea un contenedor para el boton de enviar
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: _isTyped
                        ? () => _handleSubmit(_textController.text)
                        //Se crea un metodo para enviar el mensaje
                        : null))
          ],
        ));
  } //Se crea un metodo para crear el cuadro de texto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Column(
        //Se crea una columna para alinear los mensajes,Colummn usa siempre la propiedad children
        children: <Widget>[
          Flexible(
              child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            reverse: true, //Se invierte la lista
            itemBuilder: (_, int index) =>
                messages0[index], //Se crea el mensaje
            itemCount: messages0.length,
          )),
          const Divider(
            height: 1.0,
          ),
          Container(
            child: _buildTextComposer(),
          )
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    Key? key,
    required this.text,
    required this.animationController,
    required this.name,
  }) : super(key: key);
  final String text;
  final AnimationController animationController;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        sizeFactor:
            CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        //Se crea una animacion para el mensaje
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start, //Se alinea el mensaje
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 16.0),
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  child: Text(name[0]), //Se crea un avatar con la primera letra
                ),
              ),
              Expanded(
                  //Se crea un contenedor para el mensaje
                  child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, //Se alinea el mensaje
                children: <Widget>[
                  Text(name, style: Theme.of(context).textTheme.titleMedium),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(text),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
