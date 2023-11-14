import 'dart:typed_data';

import'package:flutter/material.dart';
import 'package:whatsaap/message.dart';
import 'package:image_picker/image_picker.dart';
class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  Uint8List ? _image;
  void selectImage() async{
    Uint8List imag = await pickImagde(ImageSource.gallery);
    setState(() {

      _image = imag;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                _image != null?
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: MemoryImage(_image!),
                    ):



                  CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.pink,
                ),
                Positioned(child: IconButton(onPressed: (){
                  selectImage();
                },icon: Icon(Icons.add_a_photo),),

                bottom: -10,
                  left: 80,
                ),


              ],

            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 3

                     ),
                  ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 3

                        )
                    )
                ),
              ),

            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){}, child: Text("Sumbit",style: TextStyle(fontSize: 30),))

          ],
        ),
      ),
    );
  }
}
