import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

class ForgetPwdScreen extends StatefulWidget {
  @override
  _ForgetPwdScreenState createState() => _ForgetPwdScreenState();
}

class _ForgetPwdScreenState extends State<ForgetPwdScreen> {
  final _emailController = TextEditingController();

  void _login() {
    if (_emailController.text == "guest@gmail.com") {
      Navigator.pushReplacementNamed(context, '/login');
      VxToast.show(
        context,
        msg: "Buka link yang dikirim ke email Anda",
        bgColor: Vx.hexToColor("#B3CEFA"),
      );
    } else {
      VxToast.show(
        context,
        msg: "Email tidak tersedia",
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

        "Lupa Password".text.xl4.semiBold.makeCentered().py(20),

        "Pesan".text.bold.make(),
        "Masukkan email anda dan tunggu kode verifikasi yang akan dikirimkan ke email anda."
            .text
            .make()
            .pOnly(top: 4, bottom: 10),

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
          ),
        ).pLTRB(0, 0, 0, 140),

        // Kirim Email Button //

        ElevatedButton(
          onPressed: _login,
          style: ElevatedButton.styleFrom(
              backgroundColor: Vx.hexToColor("#4285F4"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          child: "Kirim Kode".text.white.xl.make(),
        ).w(230).h(50).centered().py(20),
      ]).centered().px(45),
    );
  }
}
