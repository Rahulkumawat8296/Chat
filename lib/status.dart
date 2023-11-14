import 'package:flutter/material.dart';
import 'package:whatsaap/chat.dart';
class Hii extends StatefulWidget {
  const Hii({super.key});

  @override
  State<Hii> createState() => _HiiState();
}

class _HiiState extends State<Hii> {

  @override
  Widget build(BuildContext context) {
    TextEditingController _email =TextEditingController();
    TextEditingController _pass =TextEditingController();

    return Scaffold(
        body:SingleChildScrollView(
        child: Column(
        children: [
        SizedBox(height: 150,),
    Center(child: Text("CREAT ACCOUNT ",style: TextStyle(fontSize: 30,color: Colors.red),)),
    Padding(
    padding: const EdgeInsets.only(top: 80.0,left: 20,right: 20),
    child: TextField(
    controller: _email,
    decoration: InputDecoration(
    hintText: ("Enter the email"),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
    width: 3,
    color: Colors.black,
    )
    ,
    ),

    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
    width: 3,
    color: Colors.black,
    )
    )     ),
    ),



    ),
    SizedBox(height: 20,),
    Padding(
    padding: const EdgeInsets.only(left: 20.0,right: 20),
    child: TextField(
    controller: _pass,
    decoration: InputDecoration(
    hintText: ("Enter the password"),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
    width: 3,
    color: Colors.black,
    )
    ,
    ),

    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
    width: 3,
    color: Colors.black,
    )
    )     ),
    ),
    ),
    SizedBox(height: 20,),

    TextButton(onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Nextpage()));
    }, child: Text("Sign up",style: TextStyle(fontSize:30,backgroundColor:
    Colors.pink,color:Colors.black),)),
]
    ),
    ),
    );
  }
}