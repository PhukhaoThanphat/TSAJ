import 'package:flutter/material.dart';

class Kansai extends StatefulWidget {
  const Kansai({Key? key}) : super(key: key);

  @override
  _KansaiState createState() => _KansaiState();
}

class _KansaiState extends State<Kansai> {
  List<String> prefList = [
    'Hyogo',
    'Nara',
    'Mie',
    'Shiga',
    'Wakayama',
    'Osaka',
    'Kyoto',
  ];
  List<int> _prefTappedList = [1, 1, 1, 1, 1, 1, 1];
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
