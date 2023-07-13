// ignore_for_file: file_names, prefer_const_constructors


import 'package:flutter/material.dart';

class EasyReadApp extends StatefulWidget {
  const EasyReadApp({Key? key}) : super(key: key);

  @override
  State<EasyReadApp> createState() => _EasyReadAppState();
}

class _EasyReadAppState extends State<EasyReadApp> {
  double _fontsize=20.0;
 // double Start_Point = 15;
 // double End_Point =110;
  // double age=10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.flutter_dash,color: Colors.black,),
        title: const Text("Easy Read",style: TextStyle(color: Colors.black),),
      ),
    body: SafeArea(
      child:Column(
          children: [
            Expanded(
              flex: 2,
              child: TextField(
                textInputAction: TextInputAction.done,
                style: TextStyle(fontSize:_fontsize),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type Anything ",
                  prefixIcon: Icon(Icons.type_specimen,color: Colors.black,),
                ),
                maxLines: null,
              ),
            ),
            Slider(
              value: _fontsize,
              onChanged: (newsize){
                setState(() {
                  _fontsize=newsize;
                });
              },
              min: 18.0,
              max: 60.0,
            ),
          ],
        ),
    )
    );
  }
  // Widget SimplySlider(){
  //   return Column(
  //     children: [
  //     Slider(value: age ,
  //     onChanged: (newage){
  //       setState(() {
  //         age= newage.toInt() as double;
  //       });
  //     },
  //     min: 10,
  //     max: 100,
  //   ),
  //       Text("Selected Your Age "
  //       + age.toString(),
  //       ),
  //     ],
  //   );
  // }
// Widget RangeSlider1(){
//     return Column(
//       children: [
//         RangeSlider(values: RangeValues(10, 100),
//             onChanged: (newvalue){
//             setState(() {
//               Start_Point=newvalue.start;
//               End_Point=newvalue.end;
//             });
//             RangeLabels(Start_Point.toString(), End_Point.toString());
//             },
//           min: 10.0,
//           max:100.0,
//         ),
//         Text("Start_Point"+Start_Point.toStringAsFixed(2)+"\nEnd_Point"
//             +End_Point.toStringAsFixed(2),
//         ),
//       ],
//     );
// }


}