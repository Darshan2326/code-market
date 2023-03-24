import 'package:code_market_app/MODELS/cetegoryModel.dart';
import 'package:flutter/material.dart';

class flutter_items extends StatelessWidget {
  final FlutterItems flutter_cetegory;
  const flutter_items({Key? key, required this.flutter_cetegory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("flutter details page"),
        title: Text(flutter_cetegory.name),
      ),

    );
  }
}
