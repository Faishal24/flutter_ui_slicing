import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: VStack([
        "Responsi Tugas 2".text.xl3.extraBlack.makeCentered().pOnly(top: 50),
        Spacer(),
        Image.asset(
          "assets/images/logo.png",
          width: 300,
          height: 170,
        ).centered(),
        CircularProgressIndicator().centered().pOnly(top: 30),
        "Selamat Datang".text.xl2.bold.makeCentered().py(30),
        Spacer(),
        "Dikembangan menggunakan framework flutter VelocityX"
            .text
            .gray700
            .center
            .makeCentered()
            .py(30),
      ]).centered().px(45),
    );
  }
}
