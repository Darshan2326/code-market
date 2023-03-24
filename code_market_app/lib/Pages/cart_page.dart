import 'package:code_market_app/MODELS/cart.dart';
import 'package:code_market_app/MODELS/models.dart';
import 'package:code_market_app/Pages/Home_widgets/codemarket_images.dart';
import 'package:code_market_app/core/store.dart';
import 'package:code_market_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {

  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        centerTitle: true,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          // Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _cart = CartModel();
    VxState.watch(context, on: [RemoveMutation]);

    final CartModel _cart = (VxState.store as Mystore).cart;

    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${_cart.totalPrice}".text.xl4.color(Colors.black).bold.make(),

          // 30.widthBox,
          ElevatedButton(
              style: ButtonStyle(
                // shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              onPressed: () {},
              child: Text(
                "Buy",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )).wh(150, 40)
        ],
      ).p16(),
    );
  }
}

class _CartList extends StatelessWidget {
  _CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as Mystore).cart;

    return _cart.items.isEmpty
        ? "Nothing to Show".text.xl4.makeCentered()
        : ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) =>
          ListTile(
            leading: Icon(Icons.done),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle_outline),
              onPressed: () => RemoveMutation(_cart.items[index]),
            ),
            title: _cart.items[index].name.text.bold.xl2.make(),
          ),
    );
  }
}
