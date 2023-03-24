import 'package:code_market_app/MODELS/models.dart';
import 'package:code_market_app/Pages/Home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeDetailPage extends StatelessWidget {
  final Items codemarket;
  final ScrollController controller = ScrollController();

  HomeDetailPage({Key? key, required this.codemarket})
      : assert(codemarket != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(codemarket.name),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          // buttonPadding: Vx.mH8,
          children: [
            // codemarket.price.text.bold.xl3.make(),
            "\₹${codemarket.price}".text.bold.xl3.make(),
            AddToCart(codemarket: codemarket).wh(100, 50).p8(),
          ],
        ).p8(),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 500,
                width: 390,
                color: Colors.white60,
                child: CarouselSlider(
                  items: [
                    Container(
                      // margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(codemarket.f_image),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(codemarket.s_image),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(codemarket.t_image),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(codemarket.fo_image),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(codemarket.fi_image),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 500.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 10 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 600),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
            ),
            codemarket.appdesc.text.xl.bold.make().p16(),
            // Image.network(codemarket.images).p16(),
          ],
        ),
      ),
    );
  }
}
