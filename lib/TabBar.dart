// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class TabBar_Widget extends StatelessWidget {
  const TabBar_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Menu App"),
            elevation: 0,
            backgroundColor: Colors.grey.shade600,
            leading: Icon(Icons.restaurant_menu_outlined),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                icon: Icon(Icons.home_outlined),
                text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.account_circle,),
                  text: "Account",
                ),

                Tab(
                  icon: Icon(Icons.flutter_dash_sharp),
                  text: "Fav",
                ),
              ],
            ),
          ),
          backgroundColor: Colors.grey.shade600,
         body: TabBarView(
             children: [
               SingleChildScrollView(
                 child:  Column(
                   children: [
                     SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   SizedBox(
                                     height: 300,
                                     width: 250,
                                     child: Card(
                                       margin: const EdgeInsets.all(10),
                                       color: Colors.brown.shade200,
                                       child: Column(
                                         children: [
                                           SizedBox(height: 10,),
                                           CircleAvatar(
                                             radius: 40,
                                             backgroundImage: NetworkImage("https://images.pexels.com/photos/5808354/pexels-photo-5808354.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                           ),
                                           Padding(padding: EdgeInsets.all(8),
                                             child: Row(
                                               children: [
                                                 Text("Coffe Misto",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600,color: Colors.white),)
                                               ],
                                             ),
                                           ),
                                           Padding(padding: EdgeInsets.all(8),
                                               child: Row(
                                                 mainAxisAlignment: MainAxisAlignment.start,
                                                 children: const[
                                                   Text("Our dark, rich espressio\nbalanced with steamed milk\nand a light layer of foam",style: TextStyle(color: Colors.white),)
                                                 ],
                                               )
                                           ),
                                           Padding(padding: EdgeInsets.all(8),
                                               child: Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: [
                                                   Text("\$4.99",style: TextStyle(color: Colors.black,fontSize:20),),
                                                   FloatingActionButton(
                                                     backgroundColor: Colors.white,
                                                     child: Icon(Icons.favorite,color: Colors.grey.shade600,),
                                                     onPressed: (){},
                                                   ),
                                                 ],
                                               )
                                           ),
                                         ],
                                       ),

                                     ),
                                   ),
                                 ],
                               ),

                             ],
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   SizedBox(
                                     height: 300,
                                     width: 250,
                                     child: Card(
                                       margin: EdgeInsets.all(10),
                                       color: Colors.brown.shade200,
                                       child: Column(
                                         children: [
                                           SizedBox(height: 10,),
                                           CircleAvatar(
                                             radius: 40,
                                             backgroundImage: NetworkImage("https://images.pexels.com/photos/15130534/pexels-photo-15130534.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                           ),
                                           Padding(padding: EdgeInsets.all(8),
                                             child: Row(
                                               children: [
                                                 Text("Chezz Pizza",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600,color: Colors.white),)
                                               ],
                                             ),
                                           ),
                                           Padding(padding: EdgeInsets.all(8),
                                               child: Row(
                                                 mainAxisAlignment: MainAxisAlignment.start,
                                                 children: [
                                                   Text("Pizza take-out delivery chain\noffering classic specialty pizzas,\nsides desserts.",style: TextStyle(color: Colors.white),)
                                                 ],
                                               )
                                           ),
                                           Padding(padding: EdgeInsets.all(8),
                                               child: Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: [
                                                   Text("\$15.99",style: TextStyle(color: Colors.black,fontSize:20),),
                                                   FloatingActionButton(
                                                     backgroundColor: Colors.white,
                                                     child: Icon(Icons.favorite,color: Colors.grey.shade600,),
                                                     onPressed: (){},
                                                   ),
                                                 ],
                                               )
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                     Divider(color: Colors.brown,),
                     Column(
                       children: [
                         Container(
                           height: 150,
                           color: Colors.brown.shade200,
                           child: Row(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 10),
                                 height: 120,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     CircleAvatar(
                                       radius: 50,
                                       backgroundImage: NetworkImage("https://images.pexels.com/photos/15040231/pexels-photo-15040231.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                     )
                                   ],
                                 ),
                               ),
                               Expanded(
                                 child: Container(
                                   margin: EdgeInsets.only(left: 20),
                                   height: 100,
                                   width: 100,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Icon(Icons.location_on,color: Colors.red,),
                                       Text("Wellesley streets in Toronto.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),

                                     ],
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),

               ),

               Text("data"),
               Text("data"),

             ]
         ),
        ),
    );
  }
}
