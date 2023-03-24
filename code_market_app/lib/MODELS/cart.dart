import 'package:code_market_app/MODELS/models.dart';
import 'package:code_market_app/core/store.dart';
import 'package:velocity_x/velocity_x.dart';


class CartModel {

   late CodeMarketModels _codemarket;

  final List<int> _itemIds = [];

  CodeMarketModels get codemarket => _codemarket;

  set codemarket(CodeMarketModels newCodeMarket) {
    assert(newCodeMarket != null);
    _codemarket = newCodeMarket;
  }

  List<Items> get items =>
      _itemIds.map((id) => _codemarket.getByid(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}

class AddMutation extends VxMutation<Mystore>{
  final Items items;

  AddMutation(this.items);
  @override
  perform() {
    store!.cart._itemIds.add(items.id);
  }
}

class RemoveMutation extends VxMutation<Mystore>{
  final Items items;

  RemoveMutation(this.items);
  @override
  perform() {
    store!.cart._itemIds.remove(items.id);
  }
}
