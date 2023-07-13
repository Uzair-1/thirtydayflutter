// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class animatedText_Widget extends StatelessWidget {
  const animatedText_Widget({Key? key}) : super(key: key);

  static const colorizeColors = [
   // Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.teal,
    Colors.redAccent,
    Colors.tealAccent,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: 'Horizon',
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(" AnimatedText Widget "),centerTitle: true,backgroundColor: Colors.teal,),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 250,
                  width: 470,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY66dJ6r1RVR-9W2qbRnoEdnF6Cz-z505YPg&usqp=CAU"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(left: 15),
                child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            "EID MUBARAK",
                            textStyle: colorizeTextStyle,
                            colors: colorizeColors,
                          ),
                          ColorizeAnimatedText(
                            "FLUTTER DEVELOPER",
                            textStyle: colorizeTextStyle,
                            colors: colorizeColors,
                          ),
                        ],
                        totalRepeatCount: 4,
                        isRepeatingAnimation: true,
                      ),
                    ]
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Wish you a very happy and peaceful Eid, \nMay ALLAH accept all our good deeds and, \nbless us with peace and prosperity.")
                ],
              ),
              SizedBox(height: 100,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText(" #30 Day's Of Flutter Developer ",textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.teal)),
                      ],
                      totalRepeatCount: 4,
                      isRepeatingAnimation: true,
                    ),
                  ]
              )

            ],
          ),
        )
      ),
    );
  }
}
