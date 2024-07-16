import 'package:cake_project/model/items_model2.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

class FavoriteProvider2 extends ChangeNotifier {
  final List<CakeDetail2> _favorite = [];
  List<CakeDetail2> get favorites => _favorite;
  void toggleFavorite(CakeDetail2 cake2){
    if(_favorite.contains(cake2)){
      _favorite.remove(cake2);

    }else{
      _favorite.add(cake2);
    }
    notifyListeners();
  }
  bool isExist (CakeDetail2 cake2){
    final isExist = _favorite.contains(cake2);
    return isExist;
  }
  static FavoriteProvider2 of(BuildContext context, {bool listen = true}){
    return Provider.of<FavoriteProvider2>(context, listen: listen);
  }
}