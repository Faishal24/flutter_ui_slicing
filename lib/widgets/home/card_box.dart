import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardBox extends StatelessWidget {
  final String artist;
  final String song;

  const CardBox({super.key, 
    required this.artist,
    required this.song,
  });

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: VStack(
        [
          VxBox(
              child: Icon(
            Icons.library_music,
            color: Colors.white,
            size: 70,
          )).blue500.size(100, 100).roundedSM.makeCentered(),
          const Spacer(),
          VStack(
            [
              artist.text.white.bold.sm.make(),
              song.text.white.thin.sm.make(),
            ],
          ),
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).p12(),
    )
        .blue600
        .rounded
        .margin(EdgeInsets.only(left: 4, top: 5, right: 4))
        .height(170)
        .make();
  }
}
