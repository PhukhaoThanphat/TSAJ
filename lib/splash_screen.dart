import 'package:flutter/material.dart';
import 'Pages/homePage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetohome(); //comment นี้ไว้ return กลับหน้า home
  }

  _navigatetohome() async {
    //async คือ function ใน Javascript ที่เอาไว้ใช้รอเวลา เช่นในหน้า splash screen
    await Future.delayed(Duration(milliseconds: 1500),
        () {}); //หลังจาก duration มันไม่ต้องเรียก function อะไรก็คือใส่ว่างไปเลย
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: "Home",
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //ถ้าจะปรับรูปต้องเอาใส่ container แล้วกำหนด height ด้วยไม่งั้นมันจะไม่รู้ว่า fit คือ fit เท่าไหร่
              child: Image.asset(
                'asset/TSAJ_logo.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                "Thai Students' Association in Japan",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(
                "Under Royal Patronage",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
