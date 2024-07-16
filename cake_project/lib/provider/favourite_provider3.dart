import 'package:flutter/material.dart';
import 'package:cake_project/model/items_model3.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

class FavoriteProvider3 extends ChangeNotifier {
  final List<CakeDetail3> _favorite = [];
  List<CakeDetail3> get favorites => _favorite;
  void toggleFavorite(CakeDetail3 cake3){
    if(_favorite.contains(cake3)){
      _favorite.remove(cake3);

    }else{
      _favorite.add(cake3);
    }
    notifyListeners();
  }
  bool isExist (CakeDetail3 cake3){
    final isExist = _favorite.contains(cake3);
    return isExist;
  }
  static FavoriteProvider3 of(BuildContext context, {bool listen = true}){
    return Provider.of<FavoriteProvider3>(context, listen: listen);
  }
}