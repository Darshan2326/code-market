import 'package:code_market_app/MODELS/cat_item_bellow_search.dart';
import 'package:flutter/material.dart';

class category_flutter_items_page extends StatefulWidget {
  // final LANGUAGE language;

  const category_flutter_items_page({Key? key , }) : super(key: key);

  @override
  State<category_flutter_items_page> createState() => _category_flutter_items_pageState();
}

class _category_flutter_items_pageState extends State<category_flutter_items_page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),

    );
  }
}
