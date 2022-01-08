import 'package:TESTINGAPP/src/raz.dart';
import 'package:flutter/material.dart';

class myHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Material(
          child: ListView(
            children: [
              Material(
                child: InkWell(
                  onTap: () => {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 400,
                    color: Colors.transparent,
                  ),
                ),
                color: Colors.yellow,
              ),
              Container(
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
