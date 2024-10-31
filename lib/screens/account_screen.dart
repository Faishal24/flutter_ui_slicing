import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final _emailController = TextEditingController(text: "guest@gmail.com");
  final _nameController = TextEditingController(text: "Guest");
  final _phoneController = TextEditingController(text: "08123456789");
  final _addressController = TextEditingController(text: "Sleman, Yogyakarta");

  void _editProfile() {
    VxToast.show(
      context,
      msg: "Profil berhasil diperbarui",
      bgColor: Vx.hexToColor("#B3CEFA"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return VStack([
      Center(
          child: VxBox(
        child: VStack(
          [
            VxBox(
                child: Icon(
              Icons.supervised_user_circle,
              color: Colors.white,
              size: 90,
            )).blue500.size(120, 120).roundedSM.makeCentered(),
            const Spacer(),
            VStack([
              "Faishal Hakim".text.base.bold.white.makeCentered(),
              "Universitas Teknologi Yogyakarta"
                  .text
                  .xs
                  .white
                  .center
                  .makeCentered(),
            ])
          ],
          crossAlignment: CrossAxisAlignment.start,
        ).p12(),
      ).blue600.rounded.size(150, 205).margin(Vx.m8).make()),
      "Email".text.base.semiBold.make().py8(),
      TextFormField(
        controller: _emailController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: "Masukkan Email",
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
      ),
      "Nama".text.base.semiBold.make().py8(),
      TextFormField(
        controller: _nameController,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: "Masukkan Nama",
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
      ),
      "Nomor Telepon".text.base.semiBold.make().py8(),
      TextFormField(
        controller: _phoneController,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: "Masukkan Nomor Telepon",
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
      ),
      "Alamat".text.base.semiBold.make().py8(),
      TextFormField(
        controller: _addressController,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: "Masukkan Alamat",
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
      ),
      ElevatedButton(
        onPressed: _editProfile,
        style: ElevatedButton.styleFrom(
            backgroundColor: Vx.hexToColor("#4285F4"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: "Simpan Data".text.white.xl.make(),
      ).w(230).h(50).centered().py(20),
    ]).centered().px(15);
  }
}
