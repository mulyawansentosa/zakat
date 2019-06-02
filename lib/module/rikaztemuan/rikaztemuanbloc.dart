import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RikazTemuanBloc extends ChangeNotifier{
  double _harta = 0;
  double _kadar = 0.2;
  double _zakat = 0;

  double get harta => _harta;
  double get kadar => _kadar;
  double get zakat => _zakat;

  set harta(double val){
    _harta = val;
    notifyListeners();
  }

  set kadar(double val){
    _kadar = val;
    notifyListeners();
  }

  set zakat(double val){
    _zakat = val;
    notifyListeners();
  }

  hitungzakat(){
    _zakat = _harta*_kadar;
    notifyListeners();
  }

}