import 'package:flutter/material.dart';

class productPage extends StatefulWidget {
  const productPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<productPage> createState() => _productPageState();
}

class _productPageState extends State<productPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
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
