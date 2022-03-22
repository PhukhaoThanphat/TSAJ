import 'dart:ffi';

import 'package:flutter/material.dart';
import 'Region.dart';
import 'Category.dart';
import 'Status.dart';
import 'Receive.dart';

class filter extends StatefulWidget {
  @override
  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {
  List<String> filterList = ['Region', 'Category', 'Status', 'Receive'];
  List<int> _indexTappedList = [1, 1, 1, 1];
  List functionList = [
    region(),
    catego(),
    stat(),
    receive(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: filterList.length,
          itemBuilder: (context, index) => buildFilterList(index),
        ),
      ),
      FlatButton(
          onPressed: () {},
          child: Text(
            'Search',
            style: TextStyle(
              fontSize: 15,
            ),
          )),
    ]);
  }

  Widget buildFilterList(int index) {
    return Container(
      padding: EdgeInsets.all(2),
      child: FlatButton(
        onPressed: () {
          setState(() {
            _indexTappedList[index] += 1;
          });
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: Text(filterList[index]),
                ),
                Container(
                  child: _indexTappedList[index] % 2 == 0
                      ? Icon(Icons.arrow_back_ios)
                      : Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            Container(
              child: _indexTappedList[index] % 2 == 0
                  ? functionList[index]
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
