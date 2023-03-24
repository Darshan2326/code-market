import 'dart:async';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:code_market_app/MODELS/cart.dart';
import 'package:code_market_app/MODELS/cetegoryModel.dart';
import 'package:code_market_app/Pages/cart_page.dart';
import 'package:code_market_app/Pages/category.dart';
import 'package:code_market_app/Pages/category_new.dart';
import 'package:code_market_app/Pages/home_page.dart';
import 'package:code_market_app/core/store.dart';
import 'package:code_market_app/error_page.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class bottome_navi extends StatefulWidget {
  const bottome_navi({Key? key}) : super(key: key);

  @override
  State<bottome_navi> createState() => _bottome_naviState();
}

class _bottome_naviState extends State<bottome_navi> {
  //internet chaker
  late StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlert = false;

  @override
  void inistState() {
    getConnectivity();
    super.initState();
  }

  getConnectivity() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      isDeviceConnected = await InternetConnectionChecker().hasConnection;
      if (!isDeviceConnected && isAlert == false) {
        showDialogBox();
        setState(() => isAlert = true);
      }
    });
    @override
    void dispose() {
      subscription.cancel();
      super.dispose();
    }
  }

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation, AddMutation]);
    final _Cart = (VxState.store as Mystore).cart;

    return StreamBuilder<ConnectivityResult>(
      stream: Connectivity().onConnectivityChanged,
      builder: (context , snapshot){
        return Scaffold(
          body: snapshot.data == ConnectivityResult.none? error_page() : PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              Homepage(),
              Akhu_CategoryPage(),
              // CartPage(),
              Container(
                color: Colors.green,
              ),
              CartPage(),
            ],
          ),
          bottomNavigationBar: BottomNavyBar(
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            selectedIndex: _currentIndex,
            onItemSelected: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(icon: Icon(Icons.home), title: Text("home")),
              BottomNavyBarItem(
                  icon: Icon(Icons.category_outlined), title: Text("Category")),
              BottomNavyBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  title: Text("Account")),
              BottomNavyBarItem(
                  icon: Icon(Icons.add_shopping_cart),
                  title: Text("Cart").badge(
                      color: Vx.red500,
                      size: 19,
                      count: _Cart.items.length,
                      textStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))),
            ],
          ),
        );
      },

      // child: Scaffold(
      //   body: PageView(
      //     controller: _pageController,
      //     onPageChanged: (index) {
      //       setState(() => _currentIndex = index);
      //     },
      //     children: <Widget>[
      //       Homepage(),
      //       Akhu_CategoryPage(),
      //       // CartPage(),
      //       Container(
      //         color: Colors.green,
      //       ),
      //       CartPage(),
      //     ],
      //   ),
      //   bottomNavigationBar: BottomNavyBar(
      //     showElevation: true,
      //     itemCornerRadius: 24,
      //     curve: Curves.easeIn,
      //     selectedIndex: _currentIndex,
      //     onItemSelected: (index) {
      //       setState(() => _currentIndex = index);
      //       _pageController.jumpToPage(index);
      //     },
      //     items: <BottomNavyBarItem>[
      //       BottomNavyBarItem(icon: Icon(Icons.home), title: Text("home")),
      //       BottomNavyBarItem(
      //           icon: Icon(Icons.category_outlined), title: Text("Category")),
      //       BottomNavyBarItem(
      //           icon: Icon(Icons.account_circle_outlined),
      //           title: Text("Account")),
      //       BottomNavyBarItem(
      //           icon: Icon(Icons.add_shopping_cart),
      //           title: Text("Cart").badge(
      //               color: Vx.red500,
      //               size: 19,
      //               count: _Cart.items.length,
      //               textStyle: TextStyle(
      //                   color: Colors.white, fontWeight: FontWeight.bold))),
      //     ],
      //   ),
      // ),
    );
  }
  showDialogBox()=> showCupertinoDialog(context: context, builder: (BuildContext context)=> CupertinoAlertDialog(
    title: Text("No internet"),
    content: Text("plese chake yout internet"),
    actions: [
      TextButton(onPressed: (){}, child: Text("retry"))
    ],
  ));
}
