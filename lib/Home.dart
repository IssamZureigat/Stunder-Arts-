import 'package:flutter/material.dart';
import 'LogIn_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Stunder Arts",
          style: TextStyle(color: Colors.deepOrange[200]),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(radius: 100,
                backgroundImage: AssetImage("images/pexels-alexander-grey-1209843.jpg",),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.accents.elementAt(1)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) { 
                    return Login();
                  })));
                },
                child: Text(
                  "Sign-In Page",
                  style: TextStyle(),
                )),
          ]),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/pexels-steve-johnson-1109354.jpg")),
          ),
        ),
      ),
    );
  }
}
