import 'package:flutter/material.dart';

class PertanianBloc extends ChangeNotifier{
  double _panen = 0;
  double _nisab = 653;
  double _kadar = 0;
  double _zakat = 0;

  double get panen => _panen;
  double get nisab => _nisab;
  double get kadar => _kadar;
  double get zakat => _zakat;

  set panen(double val){
    _panen = val;
    notifyListeners();
  }
  set nisab(double val){
    _nisab = val;
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
    if(_panen < _nisab){
      _zakat = 0;
    }else{
      _zakat = _panen*_kadar;
    }
    notifyListeners();
  }
}