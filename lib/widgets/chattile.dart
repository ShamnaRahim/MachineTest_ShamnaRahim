import 'package:feedpage/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatTile extends StatefulWidget {
   ChatTile({required this.data3});
User data3;
  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(widget.data3.avatar.toString())
      ),
      title: Text(widget.data3.name.toString()),
      trailing: Text(widget.data3.time.toString()),
      subtitle: Text(widget.data3.notifctn.toString()),
      
    );
    
  }
}