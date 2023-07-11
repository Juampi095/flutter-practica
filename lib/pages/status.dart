import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/status_model.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);
  @override
  StatusState createState() => StatusState();
}

class StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).colorScheme.secondary,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(status[0].imageUrl),
            ),
            title: Text(
              status[0].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: const Text("Mi estado")),
          ),
          Text(
            "Recientes",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
                fontSize: 18.0),
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).colorScheme.secondary,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(status[1].imageUrl),
            ),
            title: Text(
              status[1].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: const Text("Dia de estudio intenso")),
          ),
          const Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).colorScheme.secondary,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(status[2].imageUrl),
            ),
            title: Text(
              status[2].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: const Text("Futbol? Yendo!")),
          ),
        ],
      ),
    );
  }
}
