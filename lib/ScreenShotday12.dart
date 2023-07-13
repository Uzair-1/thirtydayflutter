// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScreenShot extends StatefulWidget {
  const ScreenShot({Key? key}) : super(key: key);

  @override
  State<ScreenShot> createState() => _ScreenShotState();
}

class _ScreenShotState extends State<ScreenShot> {

  final _imagePaths=
  [
    'assets/image1.jpeg',
    'assets/image3.jpeg',
    'assets/image1.jpeg',
    'assets/image3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,

            leading: Icon(Icons.menu,color: Colors.black,),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(
                    options:CarouselOptions(
                      height: 250,
                 aspectRatio: 10/7,
                viewportFraction: 0.6,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                 autoPlay: true,
                autoPlayInterval: Duration(seconds:3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.2,
                 scrollDirection: Axis.horizontal,
            ),
                    items: _imagePaths.map((imagePath){
                      return Builder(
                          builder: (context){
                            return Container(
                              color: Colors.transparent,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 4.5),
                              child: Image.asset(imagePath),
                            );
                          }
                      );
                    }).toList()),
                 Column(
                   children: [
                     Padding(padding: EdgeInsets.only(left: 15,),
                     child: Row(
                       children: [
                         Text("For You",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
                       ],
                     ),
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Container(
                           height: MediaQuery.of(context).size.height*0.2,
                           width: MediaQuery.of(context).size.width*0.3,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Icon(Icons.open_in_browser_outlined),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text("Learn PhotoEdit\nEarn Money",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
                                 ],
                               ),
                             ],
                           ),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Colors.brown.shade200,
                           ),
                         ),
                         Container(
                           height: MediaQuery.of(context).size.height*0.2,
                           width: MediaQuery.of(context).size.width*0.3,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Icon(Icons.message_outlined),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text("Join \nCommunity",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
                                 ],
                               ),
                             ],
                           ),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Colors.black12,
                           ),
                         ),
                         Container(
                           height: MediaQuery.of(context).size.height*0.2,
                           width: MediaQuery.of(context).size.width*0.3,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Icon(Icons.wrap_text_rounded),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text("DCA\nSimulations",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
                                 ],
                               ),
                             ],
                           ),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Colors.black12,
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
                Column(
                  children: [
                Padding(padding: EdgeInsets.only(left: 15,top: 10),
                child: Row(
                  children: [
                    Text("Most Popular ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
                  ],
                ),
                )],
                ),
                Card(
                  color: Colors.brown.shade200,
                  child: UserableList(
                      title: "MightyEditor",
                      subtitle: "By MeetMighty"),
                ),
                Card(
                  color: Colors.brown.shade200,
                  child: UserableList(
                      title: "MightyEditor",
                      subtitle: "By MeetMighty"),
                ),
                Card(
                  color: Colors.brown.shade200,
                  child: UserableList(
                      title: "MightyEditor",
                      subtitle: "By MeetMighty"),
                ),
                Card(
                  color: Colors.brown.shade200,
                  child: UserableList(
                      title: "MightyEditor",
                      subtitle: "By MeetMighty"),
                ),Card(
                  color: Colors.brown.shade200,
                  child: UserableList(
                      title: "MightyEditor",
                      subtitle: "By MeetMighty"),
                ),

              ],
            ),
          )
        ),
    );
  }
}

  class UserableList extends StatelessWidget {
  String title, subtitle;
  UserableList({Key? key,required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Text("College App"),
      leading: Icon(Icons.abc),
      title: Text(title,),
      subtitle: Text(subtitle),
    );
  }
}



