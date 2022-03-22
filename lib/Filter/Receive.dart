import 'package:flutter/material.dart';

class receive extends StatefulWidget {
  const receive({Key? key}) : super(key: key);

  @override
  _receiveState createState() => _receiveState();
}

class _receiveState extends State<receive> {
  List<String> recList = [
    'Appointment',
    'Delivery (Free shiping)',
    'Delivery (Not free shiping)',
  ];
  List<int> _recTappedList = [1, 1, 1];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: recList.length,
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
            _recTappedList[index] += 1;
          });
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: Text(recList[index]),
                ),
                Container(
                  child: _recTappedList[index] % 2 == 0
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
