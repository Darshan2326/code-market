import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/themes.dart';

class CodeMarketHeader extends StatelessWidget {
  const CodeMarketHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        "Code Matket App".text.xl5.bold.color(MyTheme.darkbluish).make(),
        "UI tamplate".text.color(MyTheme.blue).bold.xl2.make(),
      ],
    );
  }
}