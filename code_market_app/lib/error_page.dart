import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';

class error_page extends StatefulWidget {
  const error_page({Key? key}) : super(key: key);

  @override
  State<error_page> createState() => _error_pageState();
}

class _error_pageState extends State<error_page> {
  // late StreamSubscription subscription;
  // var isDeviceConnected = false;
  // bool isAlert = false;
  //
  // @override
  // void inistState() {
  //   getConnectivity();
  //   super.initState();
  // }
  //
  // getConnectivity() {
  //   subscription = Connectivity()
  //       .onConnectivityChanged
  //       .listen((ConnectivityResult result) async {
  //     isDeviceConnected = await InternetConnectionChecker().hasConnection;
  //     if (!isDeviceConnected && isAlert == false) {
  //       showDialogBox();
  //       setState(() => isAlert = true);
  //     }
  //   });
  //   @override
  //   void dispose() {
  //     subscription.cancel();
  //     super.dispose();
  //   }
  // }
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/animation/cat.json"),
          SizedBox(height: 50,),
          Text("Something Want's Wrong",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
          Text("please chake your connection",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),)
        ],
      ),
      // child: Lottie.asset("assets/images/error.json"),
      // child: Text("Error 404"),
    );
  }
  // Widget build(BuildContext context) {
  //   return StreamBuilder<ConnectivityResult>(
  //     stream: Connectivity().onConnectivityChanged,
  //     builder: (context, snapshot) {
  //       return Scaffold(
  //         body: Center(
  //           child: snapshot.data == ConnectivityResult.none
  //               ? Text("error 404 ")
  //               : Text("404"),
  //         ),
  //       );
  //     },
  //   );
  // }
  // showDialogBox()=> showCupertinoDialog(context: context, builder: (BuildContext context)=> CupertinoAlertDialog(
  //   title: Text("No internet"),
  //   content: Text("plese chake yout internet"),
  //   actions: [
  //     TextButton(onPressed: (){}, child: Text("retry"))
  //   ],
  // ));
}
