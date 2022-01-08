import 'package:TESTINGAPP/myLandingPage.dart';
import 'package:TESTINGAPP/src/prograssBar.dart';
import 'package:TESTINGAPP/src/textField.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: myTextField());
  }
}
