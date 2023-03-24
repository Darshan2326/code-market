import 'package:code_market_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class flutter_images extends StatelessWidget {
  final String image;

  const flutter_images({Key? key, required this.image})
      : assert(flutter_images != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image).box
        .rounded
        .p8
        .color(MyTheme.black)
        .py8
        .make()
        .w40(context);;
  }
}
