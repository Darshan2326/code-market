import 'package:flutter/material.dart';

class below_searchbar_more_main_page extends StatefulWidget {
  const below_searchbar_more_main_page({Key? key}) : super(key: key);

  @override
  State<below_searchbar_more_main_page> createState() => _below_searchbar_more_main_pageState();
}

class _below_searchbar_more_main_pageState extends State<below_searchbar_more_main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More"),
      ),
    );
  }
}
