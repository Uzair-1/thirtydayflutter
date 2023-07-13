// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, camel_case_types, unnecessary_new

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Circular_Indicator extends StatelessWidget {
  const Circular_Indicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.brown.shade100,
        leading: Icon(Icons.arrow_back_ios_new,size: 16,color: Colors.black,),
        title: Text("uzariyy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              // color: Colors.orange,
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: LinearPercentIndicator(
                      lineHeight: 10,
                      width: 200,
                      animation: true,
                      animationDuration: 1000,
                      percent: 0.80,
                      backgroundColor: Colors.brown.shade300,
                      progressColor: Colors.tealAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 250,
                      child: CircularPercentIndicator(
                        radius: 50,
                        lineWidth: 10,
                        percent: 0.80,
                        animation: true,
                        animationDuration: 3000,
                        backgroundColor: Colors.brown.shade300,
                        progressColor: Colors.tealAccent,
                        circularStrokeCap: CircularStrokeCap.square,
                        center: new Text("80%"),
                        startAngle: 10,
                        footer: Text("Order For this Week",style: TextStyle(color: Colors.brown.shade600),),
                      ),
                    ),
                  ),
                ],
              )
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
