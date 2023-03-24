import 'package:code_market_app/MODELS/cart.dart';
import 'package:code_market_app/MODELS/models.dart';
import 'package:code_market_app/Pages/cart_page.dart';
import 'package:code_market_app/core/store.dart';
import 'package:code_market_app/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import 'Home_widgets/codemarketList.dart';
import 'Home_widgets/codemarket_header.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    final Code_MarketJson =
    await rootBundle.loadString("assets/files/code_market.json");
    final DecodedData = jsonDecode(Code_MarketJson);
    var LanguageData = DecodedData["language"];
    CodeMarketModels.item = List.from(LanguageData)
        .map<Items>((item) => Items.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _Cart = (VxState.store as Mystore).cart;
    VxState.watch(context, on: [RemoveMutation,AddMutation]);

    return Scaffold(
        // floatingActionButton: FloatingActionButton(
        //
        //   onPressed: () {
        //     Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (context) => CartPage()));
        //   },
        //   child: Icon(CupertinoIcons.cart),
        // ).badge(color: Vx.red500, size: 22, count: _Cart.items.length,
        //     textStyle: TextStyle(
        //       color: Colors.white,fontWeight: FontWeight.bold
        //     )
        // ),
        backgroundColor: MyTheme.creamColor,
        body:  Container(
            // color: Colors.blue,
            padding: Vx.m8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CodeMarketHeader(),
                if (CodeMarketModels.item != null &&
                    CodeMarketModels.item.isNotEmpty)
                  CodeMarketList().py8().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),

          ),
     // bottomNavigationBar: bottomNavi(),
   );
  }
}
