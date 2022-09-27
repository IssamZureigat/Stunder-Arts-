import 'package:flutter/material.dart';
import 'LogIn_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'main.dart';

class HI extends StatelessWidget {
  final Urlimages = [
    "https://media1.popsugar-assets.com/files/thumbor/nSy3r31J230QriLXlMPkBNJKVh8/314x0:1567x1253/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/07/23/717/n/46186280/827d7dbe5d37320d294845.63372665_/i/Songs-About-Love.jpg",
    "https://i.pinimg.com/236x/01/a6/94/01a69465e56fc82d8c4271c7c8106f48.jpg",
    "https://m.media-amazon.com/images/I/81dZyIpQ53L._SS500_.jpg",
    "https://cdn.theculturetrip.com/wp-content/uploads/2019/03/ia_0410_10-french-musicians-everyone-needs-to-know-01-1.jpg",
    "https://cdn-images.audioaddict.com/b/8/c/1/4/b/b8c14bf36340fb80b8475dfbb599577f.png"
  ];
  HI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: PageView(
          children: [
            Container(
              child: Image(
                  image: AssetImage("images/aa.jpg"),fit: BoxFit.cover,),
            ),Container(
              child: Image(
                  image: AssetImage("images/cc.jpg"),fit: BoxFit.cover),
            ),Container(
              child: Image(
                  image: AssetImage("images/qq.jpg"),fit: BoxFit.cover),
            ),Container(
              child: Image(
                  image: AssetImage("images/rr.jpg"),fit: BoxFit.cover),
            )
          ],
        ));
  }
}
