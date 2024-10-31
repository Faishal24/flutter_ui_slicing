import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import './card_box.dart';

class ListHorizontal extends StatelessWidget {
  final List<Map<String, String>> musicList = [
    {"Artis": "Imagine Dragons", "Lagu": "On Top of The ..."},
    {"Artis": "Mitski", "Lagu": "Nobody"},
    {"Artis": "Coldplay", "Lagu": "Yellow"},
    {"Artis": "Halsey", "Lagu": "Without Me"},
    {"Artis": "Illenium", "Lagu": "Hold On"},
  ];

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: SizedBox(
            height: 170,
            child: GridView(
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.2,
              ),
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              children: List.generate(musicList.length, (index) {
                return CardBox(
                  artist: musicList[index]["Artis"]!,
                  song: musicList[index]["Lagu"]!,
                );
              }),
            ))).padding(EdgeInsets.only(left: 11, right: 0)).make();
  }
}
