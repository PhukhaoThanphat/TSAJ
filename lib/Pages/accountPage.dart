import 'package:flutter/material.dart';

class accountPage extends StatefulWidget {
  const accountPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<accountPage> createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
  @override
  Widget build(BuildContext context) {
    //ทำ google account
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
