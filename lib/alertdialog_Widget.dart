// ignore_for_file: file_names, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class Dialog_Widget extends StatefulWidget {
  const Dialog_Widget({Key? key}) : super(key: key);

  @override
  State<Dialog_Widget> createState() => _Dialog_WidgetState();
}

class _Dialog_WidgetState extends State<Dialog_Widget> {
  var buildContext;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text(" Alert Dialog "),centerTitle: true,backgroundColor: Colors.teal,),
      body: Center(
        child: ElevatedButton(child: Text("Alter Dialog "),onPressed: (){
        _showMyDialog(buildContext,context);
        },),
      ),
    ));
  }
}
Future<void> _showMyDialog(buildContext, context) async {
  return showDialog(
    context: context,
    builder: (BuildContext  context){
      return AlertDialog(
        elevation: 0,
        title: Text("#30 Day's Flutter"),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text("with Flutter Developer "),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){}, child: Text("Start")),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Cancel")),
        ],
      ) ;
    });
}