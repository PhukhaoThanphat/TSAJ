import 'package:flutter/material.dart';

class Chubu extends StatefulWidget {
  const Chubu({Key? key}) : super(key: key);

  @override
  _ChubuState createState() => _ChubuState();
}

class _ChubuState extends State<Chubu> {
  List<String> prefList = [
    'Niigata',
    'Toyama',
    'Ishikawa',
    'Fukui',
    'Gifu',
    'Nagano',
    'Aichi',
    'Yamanashi',
    'Shizuoka'
  ];
  List<int> _prefTappedList = [1, 1, 1, 1, 1, 1, 1, 1, 1];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: prefList.length,
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
            _prefTappedList[index] += 1;
            //function เก็บค่า
          });
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: Text(prefList[index]),
                ),
                Container(
                  child: _prefTappedList[index] % 2 == 0
                      ? Icon(
                          Icons.brightness_1_outlined,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.brightness_1_rounded,
                          color: Colors.green,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
