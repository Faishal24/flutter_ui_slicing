import 'package:flutter/material.dart';
import 'package:flutter_tugas_2/provider/navigation_model.dart';
import 'package:flutter_tugas_2/widgets/home/list_horizontal.dart';
import 'package:flutter_tugas_2/widgets/home/list_vertical.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: HStack(
            [
              IconButton(
                icon: Icon(Icons.account_circle),
                iconSize: 32,
                onPressed: () {
                final navigationModel =
                    Provider.of<NavigationModel>(context, listen: false);
                navigationModel.setSelectedIndex(1);
                Navigator.pop(context);
              },
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.notifications_outlined),
                iconSize: 32,
                onPressed: () => print("Notification"),
              ),
              IconButton(
                icon: Icon(Icons.settings_outlined),
                iconSize: 32,
                onPressed: () => Navigator.pushNamed(context, '/settings'),
              ),
            ],
          )),
      body: VStack([
        "Guess".text.xl3.bold.make().pOnly(left: 15),
        Center(
          child: VStack([
          HStack([
            "Music Grid View".text.semiBold.xl2.make(),
            Icon(Icons.arrow_right, size: 32)
          ]).pOnly(left: 15, top: 20),
          // Grid View
          ListHorizontal(),

          HStack([
            "Podcast List View".text.semiBold.xl2.make(),
            Icon(Icons.arrow_right, size: 32)
          ]).pOnly(left: 15, top: 30),
          ListVertical(),
        ]))
      ]),
    );
  }
}
