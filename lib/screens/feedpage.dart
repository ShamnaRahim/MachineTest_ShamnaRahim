

import 'package:feedpage/models/user.dart';
import 'package:feedpage/widgets/profiletile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeedPage extends StatefulWidget {
   FeedPage({Key? key}) : super(key: key);
 //late User data;
 
  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
//int _current_index = 2;
// final tabs=[
//   Text('hey'),
//   Text('huuuu'),
//   Text('kjhgf')
// ];

//final screen = [Text('hello'),Text('hy'),Text('shamna')];
  List<User> UserList = [
    User(
      avatar: 'Assets/Images/naiza.jpg',
      name: 'Shamna_rahim',
       time: '35min ago',
       photo: 'Assets/Images/ns.jpg',
       notifctn: 'hello welcome to instagram'
    ),
    User(
      avatar: 'Assets/Images/naiza.jpg',
      name: 'Shaheen_rahim',
      time: '24min ago',
      photo: 'Assets/Images/ns.jpg',
      notifctn: 'Grecy invited for voice call'

    ),
    User(
      avatar: 'Assets/Images/ns.jpg',
      name: 'Gracy',
      photo: 'Assets/Images/naiza.jpg',
      time: '56min ago'
    )
    ,    User(
      avatar: 'Assets/Images/ns.jpg',
      name: 'Gracy',
      photo: 'Assets/Images/naiza.jpg',
      time: '56min ago'
    )
  ];
  @override
  Widget build(BuildContext context) {

return Scaffold(
  floatingActionButton: FloatingActionButton(onPressed: (){},
  backgroundColor: Colors.blue,
  child: Icon(Icons.add),),
  appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Icon(
                Icons.select_all,
                color: Colors.black,
              ),
            )
          ],
          title: Align(
              alignment: Alignment.center,
              child: Text(
                'Feeds',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )),
        ),
        // bottomNavigationBar: NavigationBar(selectedIndex:index,
        // onDestinationSelected:(index) =>setState(()=>this.index=index ), 
        //   destinations:[ NavigationDestination(icon: Icon(Icons.message), label: ''),
        //   NavigationDestination(icon: Icon(Icons.people), label: ''),
        //   NavigationDestination(icon: Icon(Icons.home), label: ''),
        //   NavigationDestination(icon: Icon(Icons.notifications), label: ''),
        //   NavigationDestination(icon: Icon(Icons.person_pin_circle_rounded), label: '')
        //   ]),
       // bottomNavigationBar: NavigationBar(destinations: NavigationDestination(icon: Icon(Icons.message, label: "")),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: _current_index,
        //     type: BottomNavigationBarType.fixed,
        //     items: const [
        //       BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
        //       BottomNavigationBarItem(icon: Icon(Icons.people), label: ""),
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.notifications), label: ""),
        //       BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ""),
        //     ],
        //     onTap:(index){setState(() {
        //       _current_index = index;
        //     });} ,
        //     ),
  
  body: ListView.builder(
    itemCount: UserList.length,
    itemBuilder: (BuildContext context, int index) {
      return Profile(data: UserList[index]) ;
    },
  ),
);

    // return Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.white,
    //       actions: [
    //         Padding(
    //           padding: const EdgeInsets.only(left: 20, right: 20),
    //           child: Icon(
    //             Icons.select_all,
    //             color: Colors.black,
    //           ),
    //         )
    //       ],
    //       title: Align(
    //           alignment: Alignment.center,
    //           child: Text(
    //             'Feeds',
    //             style: TextStyle(
    //               fontWeight: FontWeight.bold,
    //               color: Colors.black,
    //             ),
    //           )),
    //     ),
    //     bottomNavigationBar: BottomNavigationBar(
    //         type: BottomNavigationBarType.fixed,
    //         items: const [
    //           BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
    //           BottomNavigationBarItem(icon: Icon(Icons.people), label: ""),
    //           BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
    //           BottomNavigationBarItem(
    //               icon: Icon(Icons.notifications), label: ""),
    //           BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ""),
    //         ]),
    //     body: ListView(
    //       scrollDirection: Axis.vertical,
    //       children: [
    //         Column(
    //           children: [
    //             Row(
    //               children: [
    //                 Column(
    //                   children: [
    //                     Row(
    //                       children: [
    //                         Padding(
    //                           padding: const EdgeInsets.only(top: 10),
    //                           child: Container(
    //                             height: 70,
    //                             width: MediaQuery.of(context).size.width,
    //                             // color: Colors.blue,
    //                             child: Column(
    //                               children: [
    //                                 Row(
    //                                   children: [
    //                                     Align(
    //                                       alignment: Alignment.topLeft,
    //                                       child: CircleAvatar(
    //                                         radius: 35,
    //                                        // backgroundImage:AssetImage(widget.data.avatar.toString()) ,
    //                                         // backgroundImage: Image(image: AssetImage('Assets/Images/ns.jpg')),
    //                                       ),
    //                                     ),
    //                                     // Padding(
    //                                     //   padding:
    //                                     //       const EdgeInsets.only(left: 6),
    //                                     //   child:// Text(
    //                                     //    // widget.data.name.toString(),
    //                                     //     //style: TextStyle(
    //                                     //       //  fontWeight: FontWeight.bold,
    //                                     //       //  fontSize: 13),
    //                                     //   //),
    //                                     // ),
    //                                     Padding(
    //                                       padding:
    //                                           const EdgeInsets.only(left: 140),
    //                                       child: Text(
    //                                         '35min ago',
    //                                         style: TextStyle(
    //                                           fontSize: 13,
    //                                         ),
    //                                       ),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               ],
    //             ),
    //             Row(children: [
    //               Padding(
    //                 padding: const EdgeInsets.only(top: 10),
    //                 child: Container(
    //                     height: 250,
    //                     width: MediaQuery.of(context).size.width,
    //                     // color: Colors.pink,
    //                     child: Image(
    //                       image: AssetImage('Assets/Images/ns.jpg'),
    //                       fit: BoxFit.cover,
    //                     )),
    //               )
    //             ]),
    //             Padding(
    //               padding: const EdgeInsets.only(top: 10),
    //               child: Row(
    //                 children: [
    //                   Align(
    //                     alignment: Alignment.topLeft,
    //                     child: CircleAvatar(
    //                       radius: 35,
    //                       backgroundImage: AssetImage('Assets/Images/grey.jpg'),
    //                       // backgroundImage: Image(image: AssetImage('Assets/Images/ns.jpg')),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(left: 6),
    //                     child: Text(
    //                       'Shamna_Rahim',
    //                       style: TextStyle(
    //                           fontWeight: FontWeight.bold, fontSize: 13),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(left: 140),
    //                     child: Text(
    //                       '35min ago',
    //                       style: TextStyle(
    //                         fontSize: 13,
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ),
    //              Row(children: [
    //               Padding(
    //                 padding: const EdgeInsets.only(top: 10),
    //                 child: Container(
    //                     height: 250,
    //                     width: MediaQuery.of(context).size.width,
    //                     // color: Colors.pink,
    //                     child: Image(
    //                       image: AssetImage('Assets/Images/naiza.jpg'),
    //                       fit: BoxFit.cover,
    //                     )),
    //               )
    //             ]),
    //           ],
    //         )
    //       ],
    //     ));
  }
}
