
import 'package:code_market_app/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class codemarketImages extends StatelessWidget {
  final String image;

  const codemarketImages({Key? key, required this.image})
      : assert(codemarketImages != num),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(MyTheme.black)
        .py8
        .make()
        .w40(context);
  }
}