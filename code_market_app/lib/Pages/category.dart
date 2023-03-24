import 'dart:convert';
import 'package:code_market_app/MODELS/cetegoryModel.dart';
import 'package:code_market_app/Pages/Home_widgets/flutter_images.dart';
import 'package:code_market_app/Pages/Home_widgets/flutter_items.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(Duration(seconds: 2));
    final Flutter_cetegoryJson =
        await rootBundle.loadString("assets/files/flutter_cetegory.json");
    final DecodedData = jsonDecode(Flutter_cetegoryJson);
    var flutterData = DecodedData["flutter"];
    FlutterCetegoryModel.item = List.from(flutterData)
        .map<FlutterItems>((item) => FlutterItems.fromMap(item))
        .toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    final flutteritem = FlutterCetegoryModel.item;
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: FlutterCetegoryModel.item.length,
      itemBuilder: (context, index) {
        final FLUTTERITEM = FlutterCetegoryModel.item[index];
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      flutter_items(flutter_cetegory: FLUTTERITEM))),
          child: cetegory_of_flutter(flutteritem: FLUTTERITEM),
        );
      },
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   scrollDirection: Axis.horizontal,
    //   itemCount: CodeMarketModels.item.length,
    //   itemBuilder: (context, index) {
    //     return Stack(
    //       children: [
    //         SingleChildScrollView(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Padding(
    //                 padding: EdgeInsets.only(left: 20, top: 30),
    //                 child: Text(
    //                   "most",
    //                   style: TextStyle(
    //                       fontSize: 30,
    //                       fontWeight: FontWeight.bold,
    //                       color: Colors.black),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: EdgeInsets.only(left: 20),
    //                 child: Text(
    //                   "popular UI",
    //                   style: TextStyle(
    //                       fontSize: 30,
    //                       fontWeight: FontWeight.bold,
    //                       color: Colors.blueAccent),
    //                 ),
    //               ),
    //               // ListView.builder(
    //               //     shrinkWrap: true,
    //               //     scrollDirection: Axis.vertical,
    //               //     itemCount: CodeMarketModels.item.length,
    //               //     itemBuilder: (context, index) {
    //               Container(
    //                 height: 300,
    //                 child: cetegory_of_flutter(flutteritem: flutteritem[index]),
    //               ),
    //               // })
    //             ],
    //           ),
    //         )
    //       ],
    //     );
    //   },
    // );
  }
}

class cetegory_of_flutter extends StatelessWidget {
  final FlutterItems flutteritem;

  cetegory_of_flutter({Key? key, required this.flutteritem})
      : assert(flutteritem != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Stack(
    //   children: [
    //     SingleChildScrollView(
    //       scrollDirection: Axis.vertical,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Padding(
    //             padding: EdgeInsets.only(left: 20),
    //             child: Text(
    //               "most",
    //               style: TextStyle(
    //                   fontSize: 50,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.white),
    //             ),
    //           ),
    //           Padding(
    //             padding: EdgeInsets.only(left: 20),
    //             child: Text(
    //               "popular",
    //               style: TextStyle(
    //                   fontSize: 50,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.white),
    //             ),
    //           ),
    //           Padding(
    //             padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
    //             child: Text(
    //               flutteritem.name,
    //               style: TextStyle(
    //                   fontWeight: FontWeight.bold, color: Colors.grey),
    //             ),
    //           ),
    //         ],
    //       ),
    //     )
    //   ],
    // );

    //=======================================================================
    // important

    return Stack(
      children: [
        Column(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                width: 200,
                height: 300,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:[ BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 10,
                          spreadRadius: 0.5
                      ),
                      ],
                      image: DecorationImage(
                          image: NetworkImage(flutteritem.image),
                          fit: BoxFit.cover)),
                )),
          ],
        ),
      ],
    );

    //========================================================================================================

    // return VxBox(
    //     child: Column(
    //       children: [
    //         flutter_images(image: flutteritem.image),
    //         Expanded(
    //             child: Column(
    //               // crossAxisAlignment: CrossAxisAlignment.start,
    //               // mainAxisAlignment: MainAxisAlignment.start,
    //               children: [
    //                 flutteritem.name.text.lg.bold.make(),
    //                 flutteritem.desc.text.textStyle(context.captionStyle).make(),
    //                 // 6.heightBox,
    //                 ButtonBar(
    //                   alignment: MainAxisAlignment.spaceBetween,
    //                   buttonPadding: Vx.mH8,
    //                   // children: [
    //                   //   Text(
    //                   //     flutteritem.name,
    //                   //     textScaleFactor: 1.2,
    //                   //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    //                   //   ),
    //                   //   flutter_items(flutter_cetegory: flutteritem)
    //                   //   // AddToCart(codemarket)
    //                   // ],
    //                 )
    //               ],
    //             ))
    //       ],
    //     )).blue100.roundedLg.square(200).make().py16();
    // return Stack(
    //   children: [
    //     SingleChildScrollView(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Padding(
    //             padding: EdgeInsets.only(left: 20, top: 30),
    //             child: Text(
    //               "Most",
    //               style: TextStyle(
    //                   fontSize: 30,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.black),
    //             ),
    //           ),
    //           Padding(
    //             padding: EdgeInsets.only(left: 20),
    //             child: Text(
    //               "Populer UI",
    //               style: TextStyle(
    //                   fontSize: 30,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.blueAccent),
    //             ),
    //           ),
    //         ],
    //       ),
    //     )
    //   ],
    // );

    //================================================================

    // return ListView.builder(
    //   itemCount: FlutterCetegoryModel.item.length,
    //   shrinkWrap: true,
    //   scrollDirection: Axis.horizontal,
    //   itemBuilder: (BuildContext context, int index) {
    //     return GestureDetector(
    //       onTap: () => Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //               builder: (context) => flutter_items(
    //                     flutter_cetegory: flutteritem,
    //                   ))),
    //       child: Container(
    //           margin: EdgeInsets.all(10),
    //           width: 200,
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //               boxShadow: [
    //                 BoxShadow(
    //                     color: Colors.blueAccent,
    //                     blurRadius: 5,
    //                     spreadRadius: 0.5)
    //               ],
    //               image: DecorationImage(
    //                   image: NetworkImage(flutteritem.image), fit: BoxFit.cover
    //                   // image: AssetImage("assets/images/jerry.png")
    //                   ))),
    //     );
    //   },
    // );
  }
}
