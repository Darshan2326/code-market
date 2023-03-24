import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  const searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Search",

              prefixIcon: Icon(Icons.search_rounded),
              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //     borderSide: BorderSide(
              //       color:Colors.redAccent,
              //       width: 3,
              //     ),
              // ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color:Colors.blueAccent,
                  width: 1,
                ),
              ),
              focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color:Colors.blueAccent,
                    width: 3,
                  )
              )
            ),
          )
        ],
      ),
    );
  }
}
