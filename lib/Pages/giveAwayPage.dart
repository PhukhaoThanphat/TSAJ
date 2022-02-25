import 'package:flutter/material.dart';

class giveAwayPage extends StatefulWidget {
  const giveAwayPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<giveAwayPage> createState() => _giveAwayPageState();
}

class _giveAwayPageState extends State<giveAwayPage> {
  @override
  Widget build(BuildContext context) {
    //ทำ database + อื่น ๆ
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Give away",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ]),
    );
  }
}
