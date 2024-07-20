import 'package:flutter/material.dart';
import 'package:cake_project/model/items_model.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<CakeDetail> _cart = [];
  List<CakeDetail> get cart => _cart;
  void toggleFavorite(CakeDetail product) {
    if (_cart.contains(product)) {
      for (CakeDetail elenemnt in _cart) {
        elenemnt.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }
incrementQtn(int index){
  _cart[index].quantity++;
  notifyListeners();
}
decrementQtn(int index){
  if(_cart[index].quantity <= 1){
    return;
  }
  _cart[index].quantity--;
  notifyListeners();
}

totalPrice(){
  double myTotal = 0.0;//
  for(CakeDetail elenemnt in _cart){
    myTotal += elenemnt.price *elenemnt.quantity;
  }
  return myTotal;
}
  static CartProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
