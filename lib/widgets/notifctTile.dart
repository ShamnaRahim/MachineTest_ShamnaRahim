

import 'package:feedpage/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotfctnTile extends StatefulWidget {
   NotfctnTile({required this.data2});
User data2;
  @override
  State<NotfctnTile> createState() => _NotfctnTileState();
}

class _NotfctnTileState extends State<NotfctnTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(widget.data2.avatar.toString()),
        
      ),
      trailing:Text(widget.data2.time.toString()) ,
      title: Text(widget.data2.name.toString()),
      subtitle:Row(
        children: [
         // Text(widget.data2.name.toString()),
         Text(widget.data2.notifctn.toString()) 
        ],
      ) ,

    );
  }
}