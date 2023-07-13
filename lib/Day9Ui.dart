// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Day9UI extends StatelessWidget {
  const Day9UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu,color: Colors.black,),
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined,color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search,color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "Shopping",
            icon: Icon(Icons.shopping_cart_outlined,color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "Flutter",
            icon: Icon(Icons.flutter_dash_outlined,color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 850,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    // color: Colors.orange,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text("Find Your\nInspiration",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    // color: Colors.teal,
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search you're looking for",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    )
                  ),
                  Container(
                      height: 250,
                      // color: Colors.pink,
                      child: Column(
                        children: [
                          Container(
                              height: 20,
                              child: Row(
                                children: [
                                 Center(
                                   child:  Padding(
                                     padding: EdgeInsets.only(left: 20),
                                     child:  Text("Prime Today",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black)),
                                   )
                                 )
                                ],
                              )
                          ),
                          Container(
                            height: 200,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Container(
                                    height: 170, width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            stops: [0.1, 0.5],
                                            colors: [
                                              Colors.grey.shade200,
                                              Colors.blueGrey.shade500,
                                            ]
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage("https://images.pexels.com/photos/4846101/pexels-photo-4846101.jpeg?auto=compress&cs=tinysrgb&w=600"))

                                    ),
                                  ), SizedBox(width: 20,),
                                  Container(
                                    height: 170, width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            stops: [0.1, 0.5],
                                            colors: [
                                              Colors.grey.shade200,
                                              Colors.blueGrey.shade500,
                                            ]
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage("https://images.pexels.com/photos/7319098/pexels-photo-7319098.jpeg?auto=compress&cs=tinysrgb&w=600"))
                                    ),
                                  ),SizedBox(width: 20,),
                                  Container(
                                    height: 170, width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            stops: [0.1, 0.5],
                                            colors: [
                                              Colors.grey.shade200,
                                              Colors.blueGrey.shade500,
                                            ]
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage("https://images.pexels.com/photos/6177645/pexels-photo-6177645.jpeg?auto=compress&cs=tinysrgb&w=600"))
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                  ), SizedBox(height: 5,),
                  Container(
                    height: 200,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey, borderRadius: BorderRadius.circular(30),
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: NetworkImage("https://images.pexels.com/photos/3833098/pexels-photo-3833098.jpeg?auto=compress&cs=tinysrgb&w=600"),
                       )
                    ),
                    child: Row(
                      children: [
                        
                      ],
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),

      ));
  }
}
