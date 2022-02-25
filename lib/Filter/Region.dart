import 'package:flutter/material.dart';
import 'subRegion/Chubu.dart';
import 'subRegion/Chugoku.dart';
import 'subRegion/Hokkaido.dart';
import 'subRegion/Kanto.dart';
import 'subRegion/Kansai.dart';
import 'subRegion/Kyushu.dart';
import 'subRegion/Shikoku.dart';
import 'subRegion/Tohoku.dart';

class region extends StatefulWidget {
  const region({Key? key}) : super(key: key);

  @override
  _regionState createState() => _regionState();
}

class _regionState extends State<region> {
  List<String> regionList = [
    'Hokkaido',
    'Kanto',
    'Tohoku',
    'Chubu',
    'Kansai',
    'Shikoku',
    'Chugoku',
    'Kyushu'
  ];
  List<int> _regionTappedList = [1, 1, 1, 1, 1, 1, 1, 1];
  List functionList = [
    Hokkaido(),
    Kanto(),
    Tohoku(),
    Chubu(),
    Kansai(),
    Shikoku(),
    Chugoku(),
    Kyushu(),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: regionList.length,
        itemBuilder: (context, index) => buildRegionList(index),
      ),
    );
  }

  Widget buildRegionList(int index) {
    return Container(
      padding: EdgeInsets.all(2),
      child: FlatButton(
        onPressed: () {
          setState(() {
            _regionTappedList[index] += 1;
          });
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: Text(regionList[index]),
                ),
                Container(
                  child: _regionTappedList[index] % 2 == 0
                      ? Icon(Icons.arrow_back_ios)
                      : Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            Container(
              child: _regionTappedList[index] % 2 == 0
                  ? functionList[index]
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
