import 'dart:math';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class myPrograssBar extends StatefulWidget {
  @override
  _myPrograssBarState createState() => _myPrograssBarState();
}

class _myPrograssBarState extends State<myPrograssBar> {
  double val = 0.1;
  String statusShowing = '0%';
  void _increaseVale() {
    setState(() {
      if (val < 1) {
        val = val + .1;

        // val = Random().nextDouble();

        var i = val * 100;
        statusShowing = '$i%';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          CircularPercentIndicator(
            animation: true,
            animationDuration: 500,
            animateFromLastPercent: true,
            radius: 400,
            lineWidth: 30,
            percent: val,
            progressColor: Colors.deepPurple,
            backgroundColor: Colors.deepPurple.shade200,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(
              '$statusShowing',
              style: TextStyle(fontSize: 60, color: Colors.deepPurple),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () => {_increaseVale()}, child: Text('Increase'))
        ],
      ),
    );
  }
}



            // LinearPercentIndicator(
            //   animation: true,
            //   animationDuration: 500,
            //   animateFromLastPercent: true,
            //   percent: val,
            //   lineHeight: 20,
            //   progressColor: Colors.deepPurple,
            //   backgroundColor: Colors.deepPurple.shade200,
            //   center: Text(
            //     '$statusShowing',
            //     style: TextStyle(fontSize: 60, color: Colors.deepPurple),
            //   ),
            // ),