import 'package:feedpage/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePic extends StatefulWidget {
   ProfilePic({required this.data1});
User data1;
  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
           // AssetImage(widget.data1.avatar.toString())
           Container(
            child:Image(image: AssetImage(widget.data1.avatar.toString()))
           )
          ],
        )
      ],
    );
  }
}