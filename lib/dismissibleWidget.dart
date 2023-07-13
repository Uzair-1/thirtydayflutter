// ignore_for_file: prefer_const_constructors, file_names, unused_import

import 'dart:io';

import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {

  List<String> fruits = ["Organ", "Mango", "Apple","Grapes","Banana","PineApple","kiwi","Watermelon"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(" Dismissible Widget "),centerTitle: true,backgroundColor: Colors.deepPurple,),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context,index){
            final fruit = fruits[index];
            return Dismissible(
                onDismissed: (direction){
                  if(direction==DismissDirection.startToEnd){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(milliseconds: 3000),
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(label: "undo",textColor: Colors.white,onPressed: (){},),
                      content : Text(fruits[index]),
                      backgroundColor: Colors.redAccent,
                    ));
                  }
                  else{
                    if(direction==DismissDirection.endToStart){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: Duration(milliseconds: 3000),
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(label: "undo",textColor: Colors.white,onPressed: (){},),
                        content: Text(fruits[index]),
                        backgroundColor: Colors.green,
                      ));
                    }
                  }
                },

                key: Key(fruit),
                background: Container(color: Colors.redAccent,),
                secondaryBackground: Container(color: Colors.green,),
                child: Card(
                  child: ListTile(
                    title: Text(fruits[index]),
                  ),
                ),
            );
          },
        ),
      ),
    );
  }
}
