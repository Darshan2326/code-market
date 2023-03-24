import 'package:code_market_app/MODELS/cart.dart';
import 'package:code_market_app/MODELS/models.dart';
import 'package:velocity_x/velocity_x.dart';

class Mystore extends VxStore {
  late CodeMarketModels codemarket;
  late CartModel cart;

  Mystore() {
    codemarket = CodeMarketModels();
    cart = CartModel();
    cart.codemarket = codemarket;
  }
}
