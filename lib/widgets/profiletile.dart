

import 'package:feedpage/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
   Profile({required this.data}) ;
 User data;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // child: ListTile(
      //       title:Text(widget.data.name.toString()),
      //       leading: CircleAvatar(
      //        // backgroundImage: Image(image: AssetImage(widget.data.avatar.toString())),
      //        backgroundImage: AssetImage(widget.data.avatar.toString()),
             
      //       ),
      //       trailing: Text(widget.data.time.toString()),
      // ),
      child:  Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                // color: Colors.blue,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: CircleAvatar(
                                            radius: 35,
                                            backgroundImage:AssetImage(widget.data.avatar.toString()) ,
                                            // backgroundImage: Image(image: AssetImage('Assets/Images/ns.jpg')),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6),
                                          child:
                                          Text(
                                           widget.data.name.toString(),
                                            style: TextStyle(
                                               fontWeight: FontWeight.bold,
                                               fontSize: 13),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 140),
                                          child: Text(
                                            widget.data.time.toString(),
                                            style: TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.pink,
                        child: Image(
                          image: AssetImage(widget.data.photo.toString()),
                          fit: BoxFit.cover,
                        )),
                  )
                ]),
              ]
    ),
    );























    // return InkWell(
    //   child: ListTile(
    //     chil: Column(
    //       children: [
    //         Row(
    //           children: [
    //             Column(
    //               children: [
    //                 Row(
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.only(top: 10),
    //                       child: Container(
    //                         height: 70,
    //                         width: MediaQuery.of(context).size.width,
    //                         // color: Colors.blue,
    //                         child: Column(
    //                           children: [
    //                             Row(
    //                               children: [
    //                                 Align(
    //                                   alignment: Alignment.topLeft,
    //                                   child: CircleAvatar(
    //                                     radius: 35,
    //                                     backgroundImage:AssetImage(widget.data.avatar.toString()) ,
    //                                     // backgroundImage: Image(image: AssetImage('Assets/Images/ns.jpg')),
    //                                   ),
    //                                 ),
    //                                 Padding(
    //                                   padding:
    //                                       const EdgeInsets.only(left: 6),
    //                                   child: Text(
    //                                     widget.data.name.toString(),
    //                                     style: TextStyle(
    //                                         fontWeight: FontWeight.bold,
    //                                        fontSize: 13),
    //                                   ),
    //                                 ),
    //                                 Padding(
    //                                   padding:
    //                                       const EdgeInsets.only(left: 140),
    //                                   child: Text(
    //                                     widget.data.time.toString(),
    //                                     style: TextStyle(
    //                                       fontSize: 13,
    //                                     ),
    //                                   ),
    //                                 )
    //                               ],
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 )
    //               ],
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    
  }
}