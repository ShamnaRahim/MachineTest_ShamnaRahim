import 'package:feedpage/models/user.dart';
import 'package:feedpage/widgets/notifctTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class NotifctnScreen extends StatefulWidget {
  const NotifctnScreen({Key? key}) : super(key: key);

  @override
  State<NotifctnScreen> createState() => _NotifctnScreenState();
}

class _NotifctnScreenState extends State<NotifctnScreen> {
  List<User> Notifctn_List = [
    User(
      avatar: 'Assets/Images/naiza.jpg',
      name: 'Shamna_rahim',
       time: '35min ago',
       //photo: 'Assets/Images/ns.jpg',
       notifctn: 'hello welcome to instagram'
    ),
    User(
      avatar: 'Assets/Images/ns.jpg',
      name: 'Shaheen_rahim',
       time: '24min ago',
      // photo: 'Assets/Images/ns.jpg',
      notifctn: 'Grecy invited for voice call'

    ),
    User(
      avatar: 'Assets/Images/ns.jpg',
      name: 'Shaheen_rahim',
       time: '24min ago',
      // photo: 'Assets/Images/ns.jpg',
      notifctn: 'Grecy invited for voice call'

    ),
    User(
      avatar: 'Assets/Images/grey.jpg',
      name: 'shamna__',
       time: '24min ago',
      // photo: 'Assets/Images/ns.jpg',
      notifctn: 'Request to follow you'

    ),
    User(
      avatar: 'Assets/Images/naiza.jpg',
      name: 'Shaheen_rahim',
       time: '24min ago',
      // photo: 'Assets/Images/ns.jpg',
      notifctn: 'Grecy invited for voice call'

    ),
        User(
      avatar: 'Assets/Images/naiza.jpg',
      name: 'Shaheen_rahim',
       time: '24min ago',
      // photo: 'Assets/Images/ns.jpg',
      notifctn: 'Grecy invited for voice call'

    ),
     User(
      avatar: 'Assets/Images/grey.jpg',
      name: 'shamna__',
       time: '24min ago',
      // photo: 'Assets/Images/ns.jpg',
      notifctn: 'Request to follow you'

    ),
    User(
      avatar: 'Assets/Images/naiza.jpg',
      name: 'Shaheen_rahim',
       time: '24min ago',
      // photo: 'Assets/Images/ns.jpg',
      notifctn: 'Grecy invited for voice call'

    ),
        User(
      avatar: 'Assets/Images/naiza.jpg',
      name: 'Shaheen_rahim',
       time: '24min ago',
      // photo: 'Assets/Images/ns.jpg',
      notifctn: 'Grecy invited for voice call'

    )
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Align(alignment: Alignment.center,
        child: Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),) ,
      ),
      body: ListView.builder(
        itemCount: Notifctn_List.length,
        itemBuilder: (BuildContext context, int index) {
          return NotfctnTile(data2: Notifctn_List[index]);
        },
      ),
    );
    
  }
}