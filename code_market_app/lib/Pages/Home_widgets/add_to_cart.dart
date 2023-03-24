import 'package:code_market_app/MODELS/cart.dart';
import 'package:code_market_app/MODELS/models.dart';
import 'package:code_market_app/core/store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Items codemarket;
   AddToCart({Key? key,required this.codemarket}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    VxState.watch(context, on: [AddMutation,RemoveMutation]);
    // VxState.watch(context,to:[AddMutation]);
    final CartModel _cart = (VxState.store as Mystore).cart;
    // final CodeMarketModels _codemarket = (VxState.store as Mystore).codemarket;
    bool isInCart = _cart.items.contains(codemarket)??false;
    return ElevatedButton(
        style: ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder())),
        onPressed: () {
          if(!isInCart) {
            AddMutation(codemarket);
            // isInCart = isInCart.toggle();
            //
            // _cart.codemarket = _codemarket;
            // _cart.add(codemarket);
            // setState(() {});
          }
        },
        child: isInCart ? Icon(Icons.done ): Icon(CupertinoIcons.cart_badge_plus));
  }
}
