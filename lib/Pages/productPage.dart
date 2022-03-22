import 'package:flutter/material.dart';
import '../Filter/filter.dart';
import '../Filter/cusfilt.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class productPage extends StatefulWidget {
  const productPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<productPage> createState() => _productPageState();
}

class _productPageState extends State<productPage> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearch = Text("search");
  final items = ['Region', 'Category', 'Status', 'Receive'];
  int _indexTapped = 1;

  double appBarSize = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              color: Colors.grey,
              icon: Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  _indexTapped += 1;
                });
              }),
          actions: <Widget>[
            IconButton(
              color: Colors.grey,
              onPressed: () {
                setState(() {
                  if (this.cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(Icons.cancel);
                    this.cusSearch = TextField(
                      textInputAction: TextInputAction.go,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    );
                  } else {
                    this.cusIcon = Icon(Icons.search);
                    this.cusSearch = Text("search");
                  }
                });
              },
              icon: cusIcon,
            ),
            IconButton(
              color: Colors.grey,
              onPressed: () {
                //function setting
              },
              icon: Icon(Icons.more_vert),
            )
          ],
          titleSpacing: 5,
          title: cusSearch,
          bottom: PreferredSize(
            child: _indexTapped % 2 == 0 ? filter() : Container(),
            preferredSize: Size.fromHeight(_indexTapped % 2 == 0 ? 250 : 0),
          )),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [Text('Product ${index + 1}')],
              ),
            );
          }),
    );
  }
}
