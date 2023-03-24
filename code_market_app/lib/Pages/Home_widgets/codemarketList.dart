import 'package:code_market_app/Pages/Home_widgets/add_to_cart.dart';
import 'package:code_market_app/Pages/Home_widgets/codemarket_images.dart';
import 'package:code_market_app/Pages/home_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../MODELS/models.dart';
import '../../widgets/themes.dart';

class CodeMarketList extends StatelessWidget {
  const CodeMarketList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CodeMarketModels.item.length,
      itemBuilder: (context, index) {
        final codemarket = CodeMarketModels.item[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(
                          codemarket: codemarket,
                        ))),
            child: CODEMARKETITEM(codemarket: codemarket));
      },
    );
  }
}

class CODEMARKETITEM extends StatelessWidget {
  final Items codemarket;

  const CODEMARKETITEM({Key? key, required this.codemarket})
      : assert(codemarket != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        // Hero(
        //     tag: Key(codemarket.id.toString()),
        //     child: codemarketImages(image: codemarket.images)),
        codemarketImages(image: codemarket.images),
        Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              codemarket.name.text.lg.color(MyTheme.darkbluish).bold.make(),
              codemarket.desc.text.textStyle(context.captionStyle).make(),
              6.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mH8,
                children: [
                  Text(
                    "\₹${codemarket.price}",
                    textScaleFactor: 1.2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  AddToCart(codemarket: codemarket)
                  // AddToCart(codemarket)
                ],
              )
            ],
          ))
      ],
    )).white.roundedLg.square(120).make().py16();
  }
}
