// ignore: file_names
// ignore_for_file: camel_case_types, prefer_const_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';

class DropDown_menu extends StatefulWidget {
  const DropDown_menu({Key? key}) : super(key: key);

  @override
  State<DropDown_menu> createState() => _DropDown_menuState();
}

class _DropDown_menuState extends State<DropDown_menu> {

  String selectedValue = 'Organ';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                value: selectedValue,
                isExpanded: true,
                icon: Icon(Icons.flutter_dash),
                onChanged: (String? newvalue){
                 setState(() {
                   selectedValue= newvalue!;
                 });
                },
                items: <String>["Organ", "Mango", "Apple","Grapes","Banana","PineApple","kiwi","Watermelon"].map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem(
                   value: value,
                   child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
    );
  }
}
