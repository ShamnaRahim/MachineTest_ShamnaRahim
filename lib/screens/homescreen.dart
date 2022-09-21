import 'package:feedpage/screens/chatscreen.dart';
import 'package:feedpage/screens/feedpage.dart';
import 'package:feedpage/screens/notificationscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current_index = 0;
  final tabs=[
  ChatScreen(),
  Text('huuuu'),
  FeedPage(),
  NotifctnScreen(),
  Center(child: Text('Profile'))
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
       
       bottomNavigationBar: BottomNavigationBar(

          currentIndex: _current_index,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ""),
            ],
            onTap:(index){setState(() {
              _current_index = index;
            });} ,
            ),
            body: tabs[_current_index],
    );
  }
}