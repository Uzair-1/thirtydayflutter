// ignore_for_file: sort_child_properties_last, prefer_const_constructors, unnecessary_null_comparison, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_import, file_names, prefer_final_fields

import 'package:flutter/material.dart';
import 'main.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({Key? key}) : super(key: key);

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {

  final _controller = TextEditingController();
  List<bool> _SelectedOption = [true,false,false];
  String tip='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("After Discount"),
               if(tip!=null)
               Padding(padding: EdgeInsets.all(20),
                 child: Text(
                   tip,
                   style: TextStyle(fontSize: 30),),
               ),
              Text("Enter Amount"),
              SizedBox(
                width: 50,
                child: TextField(
                  // keyboardType: TextInputType.numberWithOptions(decimal: true),
                  controller: _controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "\$100",
                  ),
                ),
              ),
             Padding(padding: EdgeInsets.all(20),
             child:ToggleButtons(
               children: [
                 Text("\$10"),Text("\$15"),Text("\$30"),
               ],
               isSelected: _SelectedOption,
               onPressed:OnpressedOptionButton,
             )
             ),

              // ignore: deprecated_member_use
              FlatButton(
                  color: Colors.green,
                  splashColor: Colors.purple,
                  child: Text("Calculate Tip",style: TextStyle(color: Colors.white),),
                onPressed: CalculateTip,
              )

            ],
          ),
        ),
      ),
    );
  }
  void OnpressedOptionButton(int selectedIndex){
   setState(() {
     for(int i=0;i<_SelectedOption.length;i++){
       _SelectedOption[i]= selectedIndex==i;
     }
   });
  }

  void CalculateTip(){
    final totalAmount= double.parse(_controller.text);
    final selectedIndex=_SelectedOption.indexWhere((element) => element);
    final tipprecentage=[0.1,0.15,0.2][selectedIndex];

    final totalTip=(totalAmount * tipprecentage).toStringAsFixed(2);
    setState(() {
      tip='\$$totalTip';
    });
  }

}
