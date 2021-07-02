import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whtsupp/CustomUi/CustomCard.dart';
import 'package:whtsupp/Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // List<ChatModel> list = new ArrayList<>;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[900],
        onPressed: (){},
        child:Icon(Icons.chat),
      ),
      body:ListView(
        children: [
          CustomCard(),
          CustomCard(),

        ],
      ),
    );
  }
}
