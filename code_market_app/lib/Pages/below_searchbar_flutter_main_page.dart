import 'package:code_market_app/Pages/cart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:math';
// import 'package:rive/rive.dart';

class below_searchbar_flutter_main_page extends StatefulWidget {
  below_searchbar_flutter_main_page({Key? key}) : super(key: key);

  @override
  _below_searchbar_flutter_main_pageState createState() =>
      _below_searchbar_flutter_main_pageState();
}

class _below_searchbar_flutter_main_pageState
    extends State<below_searchbar_flutter_main_page> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ! Here Color Of Page Drawer !
          Container(
            // color: Colors.redAccent,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white70, Colors.blueAccent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),

          // ! simple navigation menu !

          SafeArea(
              child: Container(
            width: 220,
            // color: Colors.amberAccent,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Lottie.asset("assets/animation/flutter.json"),
                Center(
                  child: Text(
                    "Flutter Cetegorys",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Divider(),
                SizedBox(
                  width: 300,
                  height: 500,
                  // height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Column(
                            children: [
                              Card(
                                  elevation: 0,
                                  shadowColor: Colors.blue,
                                  color: Colors.transparent,
                                  child: SizedBox(
                                    width: 200,
                                    height: 90,
                                    child:
                                        Lottie.asset("assets/animation/game.json"),
                                  )),
                              Text("Games",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                            ],
                          ),
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                          },
                        ),
                        Divider(color: Colors.black26,thickness: 2,),
                        GestureDetector(
                          child: Column(
                            children: [
                              Card(
                                  elevation: 0,
                                  shadowColor: Colors.blue,
                                  color: Colors.transparent,
                                  child: SizedBox(
                                    width: 200,
                                    height: 90,
                                    child:
                                        Lottie.asset("assets/animation/ecommorce.json"),
                                  )),
                              Text("E-commerce",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                            ],
                          ),
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                          },
                        ),
                        Divider(color:Colors.black26,thickness: 2,),
                        GestureDetector(
                          child: Column(
                            children: [
                              Card(
                                  elevation: 0,
                                  shadowColor: Colors.blue,
                                  color: Colors.transparent,
                                  child: SizedBox(
                                    width: 200,
                                    height: 90,
                                    child:
                                        Lottie.asset("assets/animation/food.json"),
                                  )),
                              Text("Food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                            ],
                          ),
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                          },
                        ),
                        Divider(color:Colors.black26,thickness: 2,),

                        GestureDetector(
                          child: Column(
                            children: [
                              Card(
                                  elevation: 0,
                                  shadowColor: Colors.blue,
                                  color: Colors.transparent,
                                  child: SizedBox(
                                    width: 200,
                                    height: 90,
                                    child:
                                        Lottie.asset("assets/animation/chat.json"),
                                  )),
                              Text("Chat - Messages",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                            ],
                          ),
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                          },
                        ),
                        Divider(color:Colors.black26,thickness: 2,),

                        GestureDetector(
                          child: Column(
                            children: [
                              Card(
                                  elevation: 0,
                                  shadowColor: Colors.blue,
                                  color: Colors.transparent,
                                  child: SizedBox(
                                    width: 200,
                                    height: 90,
                                    child:
                                        Lottie.asset("assets/animation/news.json"),
                                  )),
                              Text("News",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                            ],
                          ),
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                          },
                        ),
                        Divider(color:Colors.black26,thickness: 2,),

                        GestureDetector(
                          child: Column(
                            children: [
                              Card(
                                  elevation: 0,
                                  shadowColor: Colors.blue,
                                  color: Colors.transparent,
                                  child: SizedBox(
                                    width: 200,
                                    height: 90,
                                    child:
                                        Lottie.asset("assets/animation/books.json"),
                                  )),
                              Text("Books and Learning",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                            ],
                          ),
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                          },
                        ),
                        Divider(color:Colors.black26,thickness: 2,),

                        GestureDetector(
                          child: Column(
                            children: [
                              Card(
                                  elevation: 0,
                                  shadowColor: Colors.blue,
                                  color: Colors.transparent,
                                  child: SizedBox(
                                    width: 200,
                                    height: 90,
                                    child:
                                        Lottie.asset("assets/animation/music.json"),
                                  )),
                              Text("Musics",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                            ],
                          ),
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),

          // ! : MainScreen
          TweenAnimationBuilder(
              // ? Here Change Animation
              curve: Curves.easeInOut,
              tween: Tween<double>(begin: 0, end: value),
              // ? and here change
              duration: Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child:
                      // !Scafold For MainScreen Here
                      Scaffold(
                    appBar: AppBar(
                      centerTitle: true,
                      title: Text("Flutter Tamplate"),
                    ),
                    body: Center(
                      child: Column(
                        children: [
                          Lottie.network(
                              "https://assets6.lottiefiles.com/private_files/lf30_tfozcvfo.json"),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                value == 0 ? value = 1 : value = 0;
                              });
                            },
                            child: Text(
                              "I am the genius...",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
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
