import 'package:flutter/material.dart';

class cata_block_bellow_search extends StatelessWidget {
  const cata_block_bellow_search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // color: Colors.red,
          child: Image.network(
            height:50,
              width : 110,
              "https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        ),
        Container(
          // color: Colors.red,
          child: Image.network(
              height:50,
              width : 100,
              "https://images.pexels.com/photos/1089438/pexels-photo-1089438.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        ),
      ],
    );
  }
}
