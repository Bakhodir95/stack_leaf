import 'package:flutter/material.dart';
import 'package:stack_leaf/firstPage.dart';
import 'package:stack_leaf/secondPage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SecondPage());
  }
}
