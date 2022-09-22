import 'package:feedpage/models/user.dart';
import 'package:feedpage/widgets/chattile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tb;
  List<User> ChatList = [
    User(
        avatar: 'Assets/Images/naiza.jpg',
        name: 'Shamna_rahim',
        time: '35min ago',
        //photo: 'Assets/Images/ns.jpg',
        notifctn: 'hello welcome to instagram'),
        User(
        avatar: 'Assets/Images/ns.jpg',
        name: 'Naseeba',
        time: '10min ago',
        //photo: 'Assets/Images/ns.jpg',
        notifctn: 'Good morning'),
        User(
        avatar: 'Assets/Images/grey.jpg',
        name: 'Hafis',
        time: '12min ago',
        //photo: 'Assets/Images/ns.jpg',
        notifctn: 'how r u?'),
        User(
        avatar: 'Assets/Images/naiza.jpg',
        name: 'Shamna_rahim',
        time: '35min ago',
        //photo: 'Assets/Images/ns.jpg',
        notifctn: 'hello welcome to instagram'),
        User(
        avatar: 'Assets/Images/naiza.jpg',
        name: 'Shamna_rahim',
        time: '35min ago',
        //photo: 'Assets/Images/ns.jpg',
        notifctn: 'meet at 10'),
        User(
        avatar: 'Assets/Images/ns.jpg',
        name: 'Shamna_rahim',
        time: '1min ago',
        //photo: 'Assets/Images/ns.jpg',
        notifctn: 'good evening'),
        User(
        avatar: 'Assets/Images/grey.jpg',
        name: 'Shamna_rahim',
        time: '45min ago',
        //photo: 'Assets/Images/ns.jpg',
        notifctn: 'hello welcome to instagram'),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tb = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'search',
          style: TextStyle(color: Colors.grey.withOpacity(0.75)),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.select_all,
              color: Colors.black,
            ),
          )
        ],
        bottom: TabBar(labelColor: Colors.black,
          tabs: [
            Tab(
              text: 'Messages',
            ),
            Tab(text: 'Groups')
          ],
          controller: _tb,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.blue,child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: ChatList.length,
        itemBuilder: (BuildContext context, int index) {
          return ChatTile(data3: ChatList[index]) ;
        },
      ),
    );
  }
}
