// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class BottomSheet_Widget extends StatelessWidget {
  const BottomSheet_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Bottom Sheet "),centerTitle: true,backgroundColor: Colors.teal,),
      body: Center(
        child: OutlinedButton(
          child: Text("Click",style: TextStyle(color: Colors.white),),
          onPressed: (){
            showModalBottomSheet(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),),
              ),
              isScrollControlled: true,
              backgroundColor: Colors.white,
                elevation: 2,
                context: context,
                builder: (context){
                 return Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     ListTile(
                       title: Text("Menu",style: TextStyle(color: Colors.black),),
                     ),
                     ListTile(
                       leading: Icon(Icons.home_filled,color: Colors.teal,),
                       title: Text("Home",style: TextStyle(color: Colors.black),),
                     ),
                     ListTile(
                       leading: Icon(Icons.favorite,color: Colors.red,),
                       title: Text("Favourite",style: TextStyle(color: Colors.black),),
                     ),
                     ListTile(
                       leading: Icon(Icons.settings,color: Colors.blue,),
                       title: Text("Setting",style: TextStyle(color: Colors.black),),
                     ),
                     ListTile(
                       leading: Icon(Icons.account_circle,color: Colors.green,),
                       title: Text("Profile",style: TextStyle(color: Colors.black),),
                     ),
                     ListTile(
                       title: Text("Layout",style: TextStyle(color: Colors.black),),
                     ),
                   ],
                 );
                }
            );
          },
        ),
      ),
    );
  }
}
