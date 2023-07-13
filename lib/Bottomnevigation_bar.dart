// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:thirtydayflutter/bottomSheet.dart';
import 'package:thirtydayflutter/snackBar_Widget.dart';

import 'alertdialog_Widget.dart';
import 'dismissibleWidget.dart';

class BottomNavigationBar_Widget extends StatefulWidget {
  const BottomNavigationBar_Widget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBar_Widget> createState() => _BottomNavigationBar_WidgetState();
}

class _BottomNavigationBar_WidgetState extends State<BottomNavigationBar_Widget> {

  int Selectedindex=0;
  PageController pageController = PageController();
  void OnTappped(int index){
    setState(() {
      Selectedindex=index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],
        currentIndex: Selectedindex,
         selectedItemColor: Colors.green,
         unselectedItemColor: Colors.grey,
         onTap: OnTappped,
        ),
        body: PageView(
          controller: pageController,
          //scrollDirection: Axis.vertical,
          children: [
            BottomSheet_Widget(),
            DismissibleWidget(),
            Dialog_Widget(),
            SnackBar_Widget(),
          ],
        ),
      ),
    );
  }
}
