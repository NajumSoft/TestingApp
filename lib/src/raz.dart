import 'dart:math';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class homeOne extends StatefulWidget {
  @override
  _homeOneState createState() => _homeOneState();
}

class _homeOneState extends State<homeOne> {
  double val = 0.1;
  String statusShowing = '0%';
  var _searchData = TextEditingController();
  var _postedValue = 'emfgdf';
  void _increaseVale() {
    setState(() {
      if (val < 1) {
        val = Random().nextDouble();

        var i = val * 100;
        statusShowing = '$i%';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(_postedValue),
            ),
            CircularPercentIndicator(
              animation: true,
              animationDuration: 500,
              animateFromLastPercent: true,
              radius: 200,
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

            TextField(
              controller: _searchData,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search here...',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => {_searchData.clear()},
                  )),
            ),
            ElevatedButton(
                onPressed: () => {
                      setState(() {
                        _postedValue = _searchData.text;
                      }),
                      _increaseVale()
                    },
                child: Text('Increase Value'))
          ],
        ),
      ),
    );
  }
}
