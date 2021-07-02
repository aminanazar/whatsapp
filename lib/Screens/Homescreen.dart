import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whtsupp/Pages/ChatPage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin{
  TabController _controller;
  @override
  void initState(){
    super.initState();
    _controller=TabController(length: 4, vsync: this,initialIndex:1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Whatsapp Clone"),
        backgroundColor: Colors.teal[900],
        actions:[
          IconButton(
              icon:Icon(Icons.search),onPressed:(){}),
          PopupMenuButton<String>(
              onSelected: (value){
                print(value);
              },
              itemBuilder:(BuildContext context) {
            return[
              PopupMenuItem(
              child:Text("New group"),
                value:"New group",
              ),
              PopupMenuItem(
                child:Text("New broadcast"),
                value:"New broadcast",
              ),
              PopupMenuItem(
                child:Text("Whatsupp Web"),
                value:"Whastupp Web",
              ),
              PopupMenuItem(
                child:Text("Starred Message"),
                value:"Starrred Message",
              ),
              PopupMenuItem(
                child:Text("Settings"),
                value:"Settings",
              ),
            ];
          }),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor:Colors.white ,
          tabs:[
            Tab(
         icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: ("CHATS"),
            ),
            Tab(
              text: ("STATUS"),
            ),
            Tab(
              text: ("CALL"),
            ),
        ],
        ),
      ) ,
      body:TabBarView(
        controller: _controller,
        children: [
          Text("camera"),
          ChatPage(),
          Text("status"),
          Text("call"),
        ],

      ),
    );
  }
}
