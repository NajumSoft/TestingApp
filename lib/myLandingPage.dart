import 'package:flutter/material.dart';

class woo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(20),
            width: 400,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              children: [
                Text(
                  "hello",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "hello",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "hello",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "hello",
                  style: TextStyle(fontSize: 20),
                )
              ],
            )),
      ),
    );
  }
}
