import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    if (_emailController.text == "guest@gmail.com" &&
        _passwordController.text == "guest") {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      VxToast.show(
        context,
        msg: "Email atau kata sandi salah",
        bgColor: Vx.hexToColor("#B3CEFA"),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        // Logo //
        Image.asset(
          "assets/images/logo.png",
          width: 300,
          height: 150,
        ).centered(),

        "Masuk".text.xl4.semiBold.makeCentered().py(20),

        // Input //
        "Email".text.base.semiBold.make().py8(),
        TextFormField(
          controller: _emailController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: "Masukkan Email (guest@gmail.com)",
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
        ).pLTRB(0, 0, 0, 40),

        "Password".text.base.semiBold.make().py8(),

        TextFormField(
          controller: _passwordController,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: "Masukkan Password (guest)",
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
        ),

        // Register, Forgot Password //
        HStack([
          "Belum punya akun?".text.make(),
          5.widthBox,
          "Daftar".text.blue500.make().onTap(() {
            Navigator.pushNamed(context, "/register");
          }),
          Spacer(),
          "Lupa kata sandi?".text.blue500.make().onTap(() {
            Navigator.pushNamed(context, "/forget-password");
          }),
        ]).pLTRB(0, 16, 0, 90),

        // Login Button //

        ElevatedButton(
          onPressed: _login,
          style: ElevatedButton.styleFrom(
              backgroundColor: Vx.hexToColor("#4285F4"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          child: "Masuk".text.white.xl.make(),
        ).w(230).h(50).centered().py(20),
      ]).centered().px(45),
    );
  }
}
