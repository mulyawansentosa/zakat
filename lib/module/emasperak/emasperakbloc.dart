import 'package:flutter/material.dart';

class EmasPerakBloc extends ChangeNotifier{
  double _emas = 0;
  double _emasnisab = 85;
  double _emaskadar = 0.025;
  double _emasharga = 0;
  double _emaszakat = 0;
  double _emastotal = 0;

  double _perak;
  double _peraknisab = 595;
  double _perakkadar = 0.025;
  double _perakharga = 0;
  double _perakzakat = 0;
  double _peraktotal = 0;

  double _emasperaktotal = 0;

  double get emas => _emas;
  double get emasnisab => _emasnisab;
  double get emasharga => _emasharga;
  double get emaszakat => _emaszakat;
  double get emastotal => _emastotal;

  double get perak => _perak;
  double get peraknisab => _peraknisab;
  double get perakharga => _perakharga;
  double get perakzakat => _perakzakat;
  double get peraktotal => _peraktotal;

  double get emasperaktotal => _emasperaktotal;

  set emas(double val){
    _emas = val;
    notifyListeners();
  }

  set emasharga(double val){
    _emasharga = val;
    notifyListeners();
  }
  set emaszakat(double val){
    _emaszakat = val;
    notifyListeners();
  }
  set emastotal(double val){
    _emastotal = val;
    notifyListeners();
  }

  set perak(double val){
    _perak = val;
    notifyListeners();
  }
  
  set perakharga(double val){
    _perakharga = val;
    notifyListeners();
  }
  set perakzakat(double val){
    _perakzakat = val;
    notifyListeners();
  }
  set peraktotal(double val){
    _peraktotal = val;
    notifyListeners();
  }

  set emasperaktotal(double val){
    _emasperaktotal = val;
    notifyListeners();
  }

  emaszakathitung(){
    if(_emas < _emasnisab){
      _emaszakat = 0;
      _emastotal = 0;
    }else{
      _emaszakat = _emas*_emaskadar;
      _emastotal = _emaszakat*_emasharga;
      _emasperaktotal = _emastotal+_peraktotal;
    }
    notifyListeners();
    print('Emas: ${_emaszakat}');
    print('Harga: ${_emastotal}');
  }

  perakzakathitung(){
    if(_perak < _peraknisab){
      _perakzakat = 0;
      _peraktotal = 0;
    }else{
      _perakzakat = _perak*_perakkadar;
      _peraktotal = _perakzakat*_perakharga;
      _emasperaktotal = _emastotal+_peraktotal;
    }
    notifyListeners();
  }

} 