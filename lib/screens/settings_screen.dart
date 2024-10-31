import 'package:flutter/material.dart';
import 'package:flutter_tugas_2/provider/navigation_model.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: "Settings".text.make()),
        body: VStack([
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
          VxBox(
                  child: VStack([
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Kelola Akun'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 20),
              onTap: () {
                final navigationModel =
                    Provider.of<NavigationModel>(context, listen: false);
                navigationModel.setSelectedIndex(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifikasi'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 20),
              onTap: () {
                print("pressed");
              },
            ),
            ListTile(
              leading: const Icon(Icons.policy),
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 20),
              onTap: () {
                print("pressed");
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Terms of Service'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 20),
              onTap: () {
                print("pressed");
              },
            )
          ]))
              .border(color: Colors.grey, width: 1)
              .rounded
              .margin(EdgeInsets.all(10))
              .make()
        ]).p(8));
  }
}
