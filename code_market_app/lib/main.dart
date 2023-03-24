import 'dart:async';

import 'package:code_market_app/Pages/Home_widgets/bottom_navigation.dart';
import 'package:code_market_app/Pages/home_page.dart';
import 'package:code_market_app/core/store.dart';
import 'package:code_market_app/error_page.dart';
import 'package:code_market_app/slider%20test.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: Mystore(), child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: [SystemUiOverlay.top]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: bottome_navi(),
    );
  }
}

//
// late ConnectivityResult result;
// late StreamSubscription subscription;
// var isConnected = false;
//
// @override
// void initState() {
//   super.initState();
//   startStreaming();
// }
//
//
// checkInternet() async {
//   result = await Connectivity().checkConnectivity();
//   if (result != ConnectivityResult.none) {
//     isConnected = true;
//   } else {
//     isConnected = false;
//     showDialogbox();
//     // Navigator.push(
//     //     context, MaterialPageRoute(builder: (context) => error_page()));
//   }
//   setState(() {
//
//   });
// }
//
// showDialogbox() {
//   showDialog(context: context,
//       builder: (context) =>
//           CupertinoAlertDialog(title: Text("No internet"),
//             content: Text("Please chake internet "),
//             actions: [
//               CupertinoButton(child: Text("Retry"), onPressed: (){})
//             ],
//           ));
// }
//
// startStreaming() {
//   subscription = Connectivity().onConnectivityChanged.listen((event) async {
//     checkInternet();
//   });
// }
