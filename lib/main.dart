import 'package:flutter/material.dart';
import 'Home.dart';
import 'last_secreen.dart';

import 'LogIn_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}