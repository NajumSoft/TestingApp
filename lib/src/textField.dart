import 'dart:math';

import 'package:flutter/material.dart';

class myTextField extends StatefulWidget {
  @override
  _homeOneState createState() => _homeOneState();
}

class _homeOneState extends State<myTextField> {
  var _searchData = TextEditingController();
  var _postedValue = 'emfgdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                _postedValue,
                style: TextStyle(fontSize: 40),
              ),
            ),
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
                        _searchData.clear();
                      })
                    },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
