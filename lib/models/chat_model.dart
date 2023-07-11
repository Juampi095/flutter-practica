class ChatModel {
  final String name; // name of the user
  String messages; // messages of the user
  final String time; // time of the message
  final String imageUrl; // image of the user

  ChatModel(
      {required this.name,
      required this.messages,
      required this.time,
      required this.imageUrl});
}

List<ChatModel> messageData = [
  ChatModel(
      name: "Rahul",
      messages: "Hi",
      time: "10:30",
      imageUrl:
          "https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80"),
  ChatModel(
      name: "Carmen",
      messages: "Hola! Como estas?",
      time: "11:25",
      imageUrl:
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
  ChatModel(
      name: "Luis",
      messages: "Vas al partido esta noche?",
      time: "14:50",
      imageUrl:
          "https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80"),
  ChatModel(
      name: "Maria",
      messages: "Hola! Me pasarias tu CV? Gracias!",
      time: "15:30",
      imageUrl:
          "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80"),
  ChatModel(
      name: "Leo",
      messages: "Estamos jugando, conectate!",
      time: "22:15",
      imageUrl:
          "https://images.unsplash.com/photo-1495216875107-c6c043eb703f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
  ChatModel(
      name: "Mariana",
      messages: "Hola! Suerte en tu trabajo!",
      time: "11:25",
      imageUrl:
          "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
];
