import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Image_Picker extends StatefulWidget {
  const Image_Picker({super.key});

  @override
  State<Image_Picker> createState() => _Image_PickerState();
}

class _Image_PickerState extends State<Image_Picker> {

  File? _ImagePath;
  final picker_Image = ImagePicker();

  void getImage()async{
    final accessImage =  await picker_Image.pickImage(source: ImageSource.gallery);
    setState(() {
      if(accessImage!=null){
       _ImagePath = File(accessImage.path);
      } else{
        debugPrint("Error Occurr");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         getImage();
        },
        child: Icon(Icons.file_upload_outlined),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height/2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  ClipRRect(
                      child: _ImagePath == null ? Text("Pick Image") : Image.file(_ImagePath!),
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
      ),
    );
  }
}
