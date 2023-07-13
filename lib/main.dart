// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:thirtydayflutter/snackBar_Widget.dart';

import 'Bottomnevigation_bar.dart';
import 'Day7Ui.dart';
import 'Day9Ui.dart';
import 'Dropdown_menu.dart';
import 'EasyRead_App.dart';
import 'ScreenShotday12.dart';
import 'TabBar.dart';
import 'Tipcalculatorday11.dart';
import 'alertdialog_Widget.dart';
import 'animated_text.dart';
import 'bottomSheet.dart';
import 'circularindecator.dart';
import 'day8Ui.dart';
import 'dismissibleWidget.dart';

void main(){
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light, primaryColor: Colors.deepPurple,
      ),
      home: ScreenShot(),
    );
  }
}
