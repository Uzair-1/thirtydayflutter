// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, unused_local_variable

import 'package:flutter/material.dart';

class SnackBar_Widget extends StatelessWidget {
  const SnackBar_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu1C3ZGxrtRcaMmODYRLGpbONche2LGYo3VA&usqp=CAU"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Text("It can be useful to briefly inform your users , \nwhen certain actions take place."),
               FloatingActionButton(onPressed: (){
                 final snackbar= SnackBar(
                   action: SnackBarAction(label: "undo", onPressed: (){
                     Navigator.pop(context);
                   }),
                   behavior: SnackBarBehavior.floating,
                   duration: Duration(milliseconds: 3000),
                   content: Text(" 30 Day's Flutter "),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackbar);
               },
                 backgroundColor: Colors.white,
                 child:Icon(
                   Icons.favorite,
                   size: 24.0,
                 ),
               ),
             ],
           )
          ],
        )











    //    // appBar: AppBar(title: Text('snackBar'), centerTitle: true , backgroundColor: Colors.deepPurple,),
    //       body: Center(
    //         child: ElevatedButton(onPressed: (){
    //           final snackbar = SnackBar(
    //             action: SnackBarAction(label: "undo", onPressed: (){},),
    //               duration: Duration(milliseconds: 3000),
    //               behavior: SnackBarBehavior.floating,
    //                // shape: RoundedRectangleBorder(
    //                //   borderRadius: BorderRadius.only(topRight: Radius.circular(10),)
    //                // ),
    //               content: Text(
    //             " 30 Day's Flutter ",
    //           ));
    //           ScaffoldMessenger.of(context).showSnackBar(snackbar);
    //         },
    //             child:Icon(
    //               // <-- Icon
    //               Icons.favorite,
    //               size: 24.0,
    //             ),
    //
    //         ),
    //       )
       ),
    );
  }
}
