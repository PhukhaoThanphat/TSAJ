import 'package:flutter/material.dart';

class stat extends StatefulWidget {
  const stat({Key? key}) : super(key: key);

  @override
  _statState createState() => _statState();
}

class _statState extends State<stat> {
  List<String> statList = [
    'Available',
    'Reserved',
    'Out',
  ];
  List<int> _statTappedList = [1, 2, 2];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: statList.length,
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
            _statTappedList[index] += 1;
          });
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: Text(statList[index]),
                ),
                Container(
                  child: _statTappedList[index] % 2 == 0
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
