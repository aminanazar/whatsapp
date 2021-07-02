import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
  const CustomCard({Key key}) : super(key : key);
  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.group),
              radius: 25,
            ),
            title: Text("dev stack",style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,),
            ),
            subtitle:Row(
          children: [
                Icon(Icons.done_all),
          SizedBox(
            width:3,
          ),
          Text("hi dev ",
              style: TextStyle(fontSize: 13),
            ),
                ],
            ),
              trailing: Text("18:04")
          ),
          Padding(
            padding: const EdgeInsets.only(left:20,right:80),
            child: Divider(
                thickness: 2,
            ),
          ),
        ],
      ),
    );


  }
}