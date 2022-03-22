import 'package:flutter/material.dart';

class catego extends StatefulWidget {
  const catego({Key? key}) : super(key: key);

  @override
  _categoState createState() => _categoState();
}

class _categoState extends State<catego> {
  List<String> categoryList = [
    'Apliances',
    'Books',
    'Toy & Games',
    'Sports',
    'Home & Kichen',
    'Tools',
    'Musical',
    'Other'
  ];
  List<int> _categoryTappedList = [1, 1, 1, 1, 1, 1, 1, 1];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: categoryList.length,
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
            _categoryTappedList[index] += 1;
          });
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: Text(categoryList[index]),
                ),
                Container(
                  child: _categoryTappedList[index] % 2 == 0
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
