import 'package:code_market_app/MODELS/cat_item_of_main_category_page.dart';
import 'package:code_market_app/Pages/Home_widgets/search_bar.dart';
import 'package:code_market_app/Pages/below_searchbar_flutter_main_page.dart';
import 'package:code_market_app/Pages/cart_page.dart';
import 'package:code_market_app/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'below_searchbar_android_main_page.dart';
import 'below_searchbar_ios_main_page.dart';
import 'below_searchbar_more_main_page.dart';
import 'below_searchbar_reactnative_main_page.dart';
import 'below_searchbar_website_main_page.dart';

class Akhu_CategoryPage extends StatefulWidget {
  const Akhu_CategoryPage({Key? key}) : super(key: key);

  @override
  State<Akhu_CategoryPage> createState() => _Akhu_CategoryPageState();
}

class _Akhu_CategoryPageState extends State<Akhu_CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            searchbar(),
            searchbar_niche_ni_item(),
            SizedBox(
              height: 10,
            ),
            main_category_items()
          ],
        ),
      ),
    );
  }
}

//================================ SEARCG BAR NICHE NI ITEMS===================================

class searchbar_niche_ni_item extends StatelessWidget {
  const searchbar_niche_ni_item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              InkWell(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>below_searchbar_flutter_main_page()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  // height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blue, blurRadius: 10, spreadRadius: 0.9)
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://imgs.search.brave.com/nD5tjC5NeYunMc1ojti1RDg_sOvujSx2M_KdGNcfxW0/rs:fit:1200:1152:1/g:ce/aHR0cHM6Ly8xLmJw/LmJsb2dzcG90LmNv/bS8tSkt2SW5rUUFQ/YXcvWDNaZDZZZkZo/a0kvQUFBQUFBQUE5/SzQva0d3UWgwc0FG/RzhmTWRmNjQ5LXBz/R3RGNE94dXNweFZB/Q0xjQkdBc1lIUS9z/Mzg0MC9mbHV0dGVy/LWxvZ28tNGstcW4t/Mzg0MHgyMTYwLmpw/Zw"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      "Flutter",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>below_searchbar_reactnative_main_page()));

                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  // height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.deepPurpleAccent, blurRadius: 10, spreadRadius: 0.3)
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://imgs.search.brave.com/sNwOvW_zmCtOhfkwMbLzUQB8B4k8hPP2CvRQHwI2vn0/rs:fit:1200:1080:1/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDU1NDI3/NzgucG5n"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text("React Native", style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>below_searchbar_android_main_page()));

                },
                child: Container(

                  margin: EdgeInsets.all(10),
                  // height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.greenAccent, blurRadius: 10, spreadRadius: 0.3)
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://imgs.search.brave.com/XdjX_uTgQ4I3F4aDj_cLuPjKh0RiR65uE0BsGYVnppg/rs:fit:533:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5K/a3ZQeVhWajhPc3JF/bXIwR1JwZklnSGFH/bCZwaWQ9QXBp"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text("Android", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>below_searchbar_ios_main_page()));

                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  // height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red, blurRadius: 10, spreadRadius: 0.3)
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://imgs.search.brave.com/nD5tjC5NeYunMc1ojti1RDg_sOvujSx2M_KdGNcfxW0/rs:fit:1200:1152:1/g:ce/aHR0cHM6Ly8xLmJw/LmJsb2dzcG90LmNv/bS8tSkt2SW5rUUFQ/YXcvWDNaZDZZZkZo/a0kvQUFBQUFBQUE5/SzQva0d3UWgwc0FG/RzhmTWRmNjQ5LXBz/R3RGNE94dXNweFZB/Q0xjQkdBc1lIUS9z/Mzg0MC9mbHV0dGVy/LWxvZ28tNGstcW4t/Mzg0MHgyMTYwLmpw/Zw"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text("iOs", style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>below_searchbar_websites_main_page()));

                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  // height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.cyan, blurRadius: 10, spreadRadius: 0.3)
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://imgs.search.brave.com/nD5tjC5NeYunMc1ojti1RDg_sOvujSx2M_KdGNcfxW0/rs:fit:1200:1152:1/g:ce/aHR0cHM6Ly8xLmJw/LmJsb2dzcG90LmNv/bS8tSkt2SW5rUUFQ/YXcvWDNaZDZZZkZo/a0kvQUFBQUFBQUE5/SzQva0d3UWgwc0FG/RzhmTWRmNjQ5LXBz/R3RGNE94dXNweFZB/Q0xjQkdBc1lIUS9z/Mzg0MC9mbHV0dGVy/LWxvZ28tNGstcW4t/Mzg0MHgyMTYwLmpw/Zw"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text("Websites", style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>below_searchbar_more_main_page()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  // height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.brown, blurRadius: 10, spreadRadius: 0.3)
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://imgs.search.brave.com/nD5tjC5NeYunMc1ojti1RDg_sOvujSx2M_KdGNcfxW0/rs:fit:1200:1152:1/g:ce/aHR0cHM6Ly8xLmJw/LmJsb2dzcG90LmNv/bS8tSkt2SW5rUUFQ/YXcvWDNaZDZZZkZo/a0kvQUFBQUFBQUE5/SzQva0d3UWgwc0FG/RzhmTWRmNjQ5LXBz/R3RGNE94dXNweFZB/Q0xjQkdBc1lIUS9z/Mzg0MC9mbHV0dGVy/LWxvZ28tNGstcW4t/Mzg0MHgyMTYwLmpw/Zw"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text("More", style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),
              ),
            ],
          ),
        ));
    //   Container(
    //   height: 50,
    //   child: ListView.builder(
    //     shrinkWrap: true,
    //     scrollDirection: Axis.horizontal,
    //     itemCount: LANGUAGE.length,
    //     itemBuilder: (context , index){
    //       return InkWell(
    //         onTap: (){},
    //         child: Container(
    //           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    //           margin: EdgeInsets.symmetric(horizontal: 5),
    //           decoration: BoxDecoration(
    //             color: Colors.blueAccent,
    //             borderRadius: BorderRadius.circular(15),
    //             image: DecorationImage(
    //               image: NetworkImage(
    //                 LANGUAGE[index].image,
    //
    //               ),fit: BoxFit.cover
    //             )
    //
    //           ),
    //           child: Center(
    //             child: Text(LANGUAGE[index].name,
    //             style: TextStyle(
    //               fontSize: 19,
    //               fontWeight: FontWeight.bold,
    //                 color: Colors.black
    //             ),),
    //           ),
    //         ),
    //       );
    //     },
    //   ) ,
    // );
    //==============================================================================================
    //     SizedBox(
    //   width: MediaQuery.of(context).size.width,
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: LANGUAGE.length,
    //     shrinkWrap: true,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (BuildContext context, int index) {
    //       return GestureDetector(
    //         onTap: () {
    //
    //           Navigator.push(
    //               context,
    //               MaterialPageRoute(
    //                   builder: (context) => searchbar_nicheni_items_nu_main_page()));
    //         },
    //         child: Stack(
    //           children: [
    //             Container(
    //               margin: EdgeInsets.all(10),
    //               width: 150,
    //               // height: 50,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(15),
    //                   boxShadow: [
    //                     BoxShadow(
    //                         color: Colors.blueAccent,
    //                         blurRadius: 3,
    //                         spreadRadius: 0.3)
    //                   ],
    //                   image: DecorationImage(
    //                       image: NetworkImage(LANGUAGE[index].image),
    //                       fit: BoxFit.cover)),
    //             ),
    //             Container(
    //               margin: EdgeInsets.all(10),
    //               height: 80,
    //               width: 150,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(15),
    //                   color: Colors.black26),
    //               child: Center(
    //                 child: Text(
    //                   LANGUAGE[index].name,
    //                   style: TextStyle(
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 20),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}

//===========================Category main page items============================================

class main_category_items extends StatelessWidget {
  // final price = main_page_of_category_temp.[index]price;

  main_category_items({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 250),
            itemCount: main_page_of_category_temp.length,
            itemBuilder: (context, index) => GestureDetector(
              onLongPress: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: Text("hello"),
                        content: Text("blahh...blahhh"),
                      )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
              child: Stack(
                children: [
                  Container(
                    height: 500,
                    width: 200,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(blurRadius: 5, color: Colors.blue)
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        main_page_of_category_temp[index].image,
                        fit: BoxFit.cover,
                      ),
                      // child: Image.network("https://images.pexels.com/photos/3861976/pexels-photo-3861976.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover,
                      // )
                    ),
                  ),
                  Positioned(
                    left: 10,
                    child: Text(
                      main_page_of_category_temp[index].name,
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
