import 'package:flutter/material.dart';
import 'package:cake_project/model/items_model.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<CakeDetail> _favorite = [];
  List<CakeDetail> get favorites => _favorite;
  void toggleFavorite(CakeDetail cake){
    if(_favorite.contains(cake)){
      _favorite.remove(cake);

    }else{
      _favorite.add(cake);
    }
    notifyListeners();
  }
  bool isExist (CakeDetail cake){
    final isExist = _favorite.contains(cake);
    return isExist;
  }
  static FavoriteProvider of(BuildContext context, {bool listen = true}){
    return Provider.of<FavoriteProvider>(context, listen: listen);
  }
}