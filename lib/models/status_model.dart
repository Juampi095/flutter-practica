import 'package:flutter_application_1/models/chat_model.dart';

class StatusModel {
  final String name;
  final String time;
  final String imageUrl;

  StatusModel({
    required this.name,
    required this.time,
    required this.imageUrl,
  });
}

List<StatusModel> status = [
  StatusModel(
      name: messageData[0].name,
      time: "Hoy, 3:00AM",
      imageUrl: messageData[0].imageUrl),
  //El numero 0 indica el primer nombre que tenemos en chat_model
  StatusModel(
      name: messageData[1].name,
      time: "Hoy, 1:00AM",
      imageUrl: messageData[1].imageUrl),
  StatusModel(
      name: messageData[2].name,
      time: "Hoy, 4:20PM",
      imageUrl: messageData[2].imageUrl),
  StatusModel(
      name: messageData[3].name,
      time: "Hoy, 5:00PM",
      imageUrl: messageData[3].imageUrl),
];
