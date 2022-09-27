import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'last_secreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? My_Email;
  String? My_Password;
  bool IsLoading = false;
  var duration = const Duration(seconds: 10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Log in page")),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.white,
              Colors.purple,
              Colors.blue,
              Colors.red,
            ])),
// scroll&column1
        child: SingleChildScrollView(
          child: Column(
            children: [
// Avatar
              CircleAvatar(
                radius: 100,
                backgroundImage:
                    AssetImage("images/pexels-alexander-grey-1209843.jpg"),
              ),
// Email textbox
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: TextField(
                  onChanged: (value) => My_Email = value,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Please enter your email",
                      label: Text(
                        "Email",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      prefixIcon: Icon(Icons.people)),
                  maxLines: 1,
                  maxLength: 20,
                  textAlign: TextAlign.center,
                ),
              ),
// Password textbox
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: TextField(
                  onChanged: (val) => My_Password = val,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Please enter your password",
                      label: Text(
                        "password",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      prefixIcon: Icon(Icons.people)),
                  maxLines: 1,
                  maxLength: 20,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  cursorColor: Colors.white,
                  cursorHeight: 30,
                ),
              ),
// login Button

              Padding(
                padding: const EdgeInsets.all(32),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 24),
                      minimumSize: Size.fromHeight(50),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.accents.elementAt(1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IsLoading
                          ? Row(
                            children: [
                              CircularProgressIndicator(color: Colors.white),Text("  Please wait...")
                            ],
                          )
                          : Text("login")
                    ],
                  ),
                  onPressed: () async {
                    if (My_Email == "Issam" && My_Password == "Issam"){
                      // sleep(duration);

                      if (IsLoading) return;
                      setState(() {
                        IsLoading = true;
                      });
                      await Future.delayed(Duration(seconds: 4));
                      setState(() {
                        IsLoading = false;
                      });


                      setState(() {
                        Navigator.push(context,MaterialPageRoute(builder: (context){return HI();}));
                      });
                      // showDialog(
                      //   context: context,
                      //   builder: (context) {
                      //     return AlertDialog(
                      //       content: SingleChildScrollView(
                      //         scrollDirection: Axis.horizontal,
                      //         child: Row(
                      //           children: [
                      //             Text(
                      //                 "Can you please wait until we check your credentials?"),
                      //             Icon(Ionicons.logo_android)
                      //           ],
                      //         ),
                      //       ),
                      //       actions: [
                      //         ElevatedButton(
                      //             onPressed: () {}, child: Text("I wil wait")),
                      //         ElevatedButton(
                      //             onPressed: () {},
                      //             child: Text("no i can't wait"))
                      //       ],
                      //     );
                      //   },
                      // );
                  }else{ setState(() {
                        IsLoading = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      setState(() {
                        IsLoading = false;
                      });
                    
                    
                    Fluttertoast.showToast(
        msg: "Logain Faild",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );}}
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
