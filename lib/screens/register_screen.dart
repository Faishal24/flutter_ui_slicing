import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordAgainController = TextEditingController();

  void _login() {
    if (_emailController.text == "guest@gmail.com" &&
        (_passwordController.text == "guest" &&
            _passwordAgainController.text == _passwordController.text)) {
      Navigator.pushReplacementNamed(context, '/home');
      VxToast.show(
        context,
        msg: "Berhasil Mendaftar",
        bgColor: Vx.hexToColor("#B3CEFA"),
      );
    } else {
      VxToast.show(
        context,
        msg: "Isi data dengan benar",
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
          height: 170,
        ).centered(),

        "Daftar".text.xl4.semiBold.makeCentered().py(20),

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
        ).pLTRB(0, 0, 0, 10),

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
        ).pLTRB(0, 0, 0, 10),

        "Masukkan Kembali Password".text.base.semiBold.make().py8(),
        TextFormField(
          controller: _passwordAgainController,
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
          "Sudah punya akun?".text.make(),
          5.widthBox,
          "Masuk".text.blue500.make().onTap(() {
            Navigator.pushNamed(context, "/login");
          }),
        ]).pLTRB(0, 16, 0, 40),

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
