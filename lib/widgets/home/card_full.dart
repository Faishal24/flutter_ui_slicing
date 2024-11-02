import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardFull extends StatelessWidget {
  final String headline;
  final String description;
  final String duration;

  const CardFull({super.key, 
    required this.headline,
    required this.description,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: HStack(
        [
          VxBox(
                  child: Icon(
            Icons.podcasts_rounded,
            color: Colors.white,
            size: 90,
          ))
              .blue500
              .width(120)
              .height(MediaQuery.of(context).size.height)
              .rounded
              .makeCentered(),
              
          VStack(
            [
              headline.text.black.bold.xl2.make().pOnly(bottom: 5, top: 0),
              description.text.black
                  .maxLines(3)
                  .overflow(TextOverflow.ellipsis)
                  .justify
                  .make(),
              Spacer(),
              HStack(
                [
                  Icon(
                    Icons.control_point,
                    color: Colors.black,
                  ),
                  10.widthBox,
                  "Today".text.black.make(),
                  "•".text.black.make().pOnly(left: 5, right: 5),
                  duration.text.black.make(),
                  Spacer(),
                  Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                  ),
                ],
                alignment: MainAxisAlignment.start,
                crossAlignment: CrossAxisAlignment.center,
              )
            ],
          ).pOnly(left: 12).box.width(context.screenWidth - 150).make(),
        ],
        crossAlignment: CrossAxisAlignment.start,
      ),
    ).rounded.height(120).width(context.screenWidth).make();
  }
}
