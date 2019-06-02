import 'package:flutter/material.dart';

class PendapatanJasaBloc extends ChangeNotifier{
  double _berasharga = 0;
  double _berasnisab = 524;
  double _nisab = 0;
  double _kadar = 0.025;
  double _pendapatan = 0;
  double _jasa = 0;
  double _total = 0;
  double _zakat = 0;

  double get berasharga => _berasharga;
  double get berasnisab => _berasnisab;
  double get nisab => _nisab;
  double get kadar => _kadar;
  double get pendapatan => _pendapatan;
  double get jasa => _jasa;
  double get total => _total;
  double get zakat => _zakat;

  set berasharga(double val){
    _berasharga = val;
    notifyListeners();
  }

  set berasnisab(double val){
    _berasnisab = val;
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
  set pendapatan(double val){
    _pendapatan = val;
    notifyListeners();
  }

  set jasa(double val){
    _jasa = val;
    notifyListeners();
  }

  set total(double val){
    _total = val;
    notifyListeners();
  }
  hitungnisab(){
    _nisab = _berasharga*_berasnisab;
    notifyListeners();
  }

  hitungzakat(){
    _total = _pendapatan+_jasa;
    if(_total < _nisab){
      _zakat = 0;
    }else{
      _zakat = _total*_kadar;
    }
    notifyListeners();
  }
}