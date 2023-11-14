import 'package:flutter/material.dart';
import 'package:whatsaap/screen.dart';
import 'package:whatsaap/status.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150,),
            Center(child: Text("CHAT",style: TextStyle(fontSize: 30,color: Colors.red),)),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Hello()));
            }, child: Text("Login",style: TextStyle(fontSize:30,backgroundColor:
            Colors.pink,color:Colors.black),)),

            SizedBox(height: 20,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Dont have an accounrt ? "),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Hii()));
                }, child:Text("Sign up"))
              ],
            )


          ],

        ),
      )
    );
  }
}
