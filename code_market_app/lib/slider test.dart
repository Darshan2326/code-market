// //
// // import 'dart:convert';
// //
// // import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// // import 'package:code_market_app/MODELS/models.dart';
// // import 'package:code_market_app/Pages/Home_widgets/codemarketList.dart';
// // import 'package:code_market_app/Pages/Home_widgets/codemarket_header.dart';
// // import 'package:code_market_app/Pages/home_page.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// // import 'package:velocity_x/velocity_x.dart';
// //
// // class Home extends StatefulWidget {
// //   @override
// //   _HomeState createState() => _HomeState();
// // }
// //
// // class _HomeState extends State<Home> {
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     loadData();
// //     _pageController = PageController();
// //
// //   }
// //
// //   loadData() async {
// //     await Future.delayed(Duration(seconds: 3));
// //     final Code_MarketJson =
// //     await rootBundle.loadString("assets/files/code_market.json");
// //     final DecodedData = jsonDecode(Code_MarketJson);
// //     var LanguageData = DecodedData["language"];
// //     CodeMarketModels.item = List.from(LanguageData)
// //         .map<Items>((item) => Items.fromMap(item))
// //         .toList();
// //     setState(() {});
// //   }
// //
// //   int _currentIndex = 0;
// //   late PageController _pageController;
// //
// //   @override
// //   // void initState(){
// //   //   super.initState();
// //   //   _pageController = PageController();
// //   // }
// //
// //   @override
// //   void dispose(){
// //     _pageController.dispose();
// //     super.dispose();
// //   }
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         body: SizedBox.expand(
// //           child: PageView(
// //             controller: _pageController,
// //             onPageChanged: (index){
// //               setState(() {
// //                 _currentIndex = index;
// //               });
// //             },
// //             children: [
// //               CodeMarketHeader(),
// //               if (CodeMarketModels.item != null &&
// //                   CodeMarketModels.item.isNotEmpty)
// //                 CodeMarketList().py8().expand()
// //               else
// //                 CircularProgressIndicator().centered().expand(),
// //               // Homepage(),
// //               // CodeMarketList().py8().expand(),
// //                Container(
// //                 color: Colors.blue,
// //               ), Container(
// //                 color: Colors.green,
// //               ), Container(
// //                 color: Colors.lightGreenAccent,
// //               ),
// //             ],
// //           ),
// //         ),
// //         bottomNavigationBar : BottomNavyBar(
// //           selectedIndex: _currentIndex,
// //           onItemSelected: (index){
// //
// //             _pageController.jumpToPage(index);
// //           },
// //           items:<BottomNavyBarItem> [
// //
// // BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home")),
// // BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home")),
// // BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home")),
// // BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home")),
// //           ],
// //         )
// //     );
// //   }
// // }
// //
// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_drawer/config.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
//
//
// class AnimatedDrawer extends StatefulWidget {
//     AnimatedDrawer({Key? key}) : super(key: key);
//
//   @override
//   _AnimatedDrawerState createState() => _AnimatedDrawerState();
// }
//
// class _AnimatedDrawerState extends State<AnimatedDrawer> {
//   final _drawerController = ZoomDrawerController();
//   final _animationDuration =   Duration(milliseconds: 200);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  Text('Animated Drawer'),
//         leading: IconButton(
//           icon:  Icon(Icons.menu),
//           onPressed: () => _drawerController.toggle!(),
//         ),
//       ),
//       body: ZoomDrawer(
//         controller: _drawerController,
//         style: DrawerStyle.style1,
//         menuScreen:  MenuScreen(),
//         mainScreen:  MainScreen(),
//         borderRadius: 24.0,
//         showShadow: true,
//         angle: -12.0,
//         menuBackgroundColor: Colors.grey[300]!,
//         slideWidth: MediaQuery.of(context).size.width * 0.65,
//         openCurve: Curves.fastOutSlowIn,
//         closeCurve: Curves.easeInBack,
//         duration: _animationDuration,
//       ),
//     );
//   }
// }
//
// class MenuScreen extends StatelessWidget {
//     MenuScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children:  [
//           Text('Menu Screen'),
//         ],
//       ),
//     );
//   }
// }
//
// class MainScreen extends StatelessWidget {
//     MainScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.redAccent,
//       child: Center(
//         child:  Text('Main Screen'),
//       ),
//     );
//   }
// }
//
//
import 'package:flutter/material.dart';
import 'dart:math';
// import 'package:rive/rive.dart';

class DrawerAnimated extends StatefulWidget {
    DrawerAnimated({Key? key}) : super(key: key);

  @override
  _DrawerAnimatedState createState() => _DrawerAnimatedState();
}

class _DrawerAnimatedState extends State<DrawerAnimated> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ! Here Color Of Page Drawer !
          Container(
            color: Colors.blueAccent,
            // decoration:
            // BoxDecoration(
            //     gradient:
            //     LinearGradient(
            //         colors: [Colors.purpleAccent, Colors.deepPurpleAccent],
            //         begin: Alignment.bottomCenter,
            //         end: Alignment.topCenter)),
          ),

          // ! simple navigation menu !
          SafeArea(
              child: Container(
                width: 200,
                // color: Colors.amberAccent,
                padding:   EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    DrawerHeader(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:   [
                          CircleAvatar(
                            radius: 45,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Hmida Dev's"),
                          ),
                        ],
                      ),
                    ),
                    // RiveAnimation.asset(""),
                     ListTile(
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                    ),
                      ListTile(
                      title: Text("Settings"),
                      leading: Icon(Icons.settings),
                    ),
                      ListTile(
                      title: Text("About"),
                      leading: Icon(Icons.help),
                    ),
                      ListTile(
                      title: Text("Exit"),
                      leading: Icon(Icons.exit_to_app),
                    ),
                  ],
                ),
              )),

          // ! : MainScreen
          TweenAnimationBuilder(
            // ? Here Change Animation
              curve: Curves.easeInOut ,
              tween: Tween<double>(begin: 0, end: value),
              // ? and here change
              duration:   Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..setEntry(0, 3, 200 * val)
                        ..rotateY((pi / 6) * val),
                      child:
                      // !Scafold For MainScreen Here
                      Scaffold(
                        appBar: AppBar(),
                        body: Center(
                          child: Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    value == 0 ? value = 1 : value = 0;
                                  });
                                },
                                child:   Text("Open"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ));
              }),

          //! Gesture For Slide
          GestureDetector(
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },
          )
        ],
      ),
    );
  }
}

