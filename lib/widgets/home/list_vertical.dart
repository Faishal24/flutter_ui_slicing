import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import './card_full.dart';

class ListVertical extends StatelessWidget {
  final List<Map<String, String>> podcastList = [
    {"Headline": "AI Technology", "duration": "15 min"},
    {"Headline": "Machine Learning", "duration": "27 min"},
    {"Headline": "Data Science", "duration": "20 min"},
    {"Headline": "Cyber Security", "duration": "28 min"},
    {"Headline": "Quantum Compu...", "duration": "33 min"},
  ];

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: SizedBox(
        height: 330,
        child: ListView(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          children: List.generate(podcastList.length, (index) {
            return CardFull(
              headline: podcastList[index]["Headline"]!,
              duration: podcastList[index]["duration"]!,
              description:
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            ).pOnly(bottom: 10, top: 5);
          }),
        ),
      ),
    )
        .padding(EdgeInsets.only(left: 15, right: 15))
        .make();
  }
}
