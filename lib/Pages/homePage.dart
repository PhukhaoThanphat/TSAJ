import 'package:flutter/material.dart';
import 'productPage.dart';
import 'giveAwayPage.dart';
import 'accountPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController();
  List<Widget> _screen = [
    productPage(
      title: 'Product',
    ),
    giveAwayPage(
      title: 'Give away',
    ),
    accountPage(
      title: 'Profile',
    ),
  ];
  int _indexTapped = 0;
  void _onPageChanged(int index) {
    setState(() {
      _indexTapped = index;
    });
  }

  void _onTapped(int indexTapped) {
    _pageController.jumpToPage(indexTapped);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _indexTapped == 0 ? Colors.green : Colors.grey,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: _indexTapped == 0 ? Colors.green : Colors.grey,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: _indexTapped == 1 ? Colors.red : Colors.grey,
              ),
              title: Text(
                'Add',
                style: TextStyle(
                  color: _indexTapped == 1 ? Colors.red : Colors.grey,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: _indexTapped == 2 ? Colors.blue : Colors.grey,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: _indexTapped == 2 ? Colors.blue : Colors.grey,
                ),
              )),
        ],
      ),
    );
  }
}
