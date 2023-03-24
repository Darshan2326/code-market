import 'package:code_market_app/MODELS/models.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Items item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          // print("Food app");
        },
        leading: Image.asset(item.images),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
    // Card(
    //   child: ListTile(
    //     leading: Image.network(item.images),
    //     title: Text(item.name),
    //     subtitle: Text(item.Desc),
    //     trailing: Text(
    //       "\$${item.price}",
    //       textScaleFactor: 1.2,
    //       style: TextStyle(fontWeight: FontWeight.bold),
    //     ),
    //   ),
    // );
  }
}
