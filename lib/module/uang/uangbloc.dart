import 'package:flutter/material.dart';

class UangBloc extends ChangeNotifier{
  double _emasharga     = 0;
  double _emasnisab     = 85;
  double _zakatkadar    = 0.025;
  double _harganisab    = 0;
  double _uang          = 0;
  double _suratberharga = 0;
  double _piutang       = 0;
  double _harta         = 0;
  double _utang         = 0;
  double _sisa          = 0;
  double _zakat         = 0;

  double get emasharga => _emasharga;
  double get emasnisab => _emasnisab;
  double get zakatkadar => _zakatkadar;
  double get harganisab => _harganisab;
  double get uang => _uang;
  double get suratberharga => _suratberharga;
  double get piutang => _piutang;
  double get harta => _harta;
  double get utang => _utang;
  double get sisa => _sisa;
  double get zakat => _zakat;

  set emasharga(double val){
    _emasharga = val;
    notifyListeners();
  }
  set emasnisab(double val){
    _emasnisab = val;
    notifyListeners();
  }
  set zakatkadar(double val){
    _zakatkadar = val;
    notifyListeners();
  }
  set harganisab(double val){
    _harganisab = val;
    notifyListeners();
  }
  set uang(double val){
    _uang = val;
    notifyListeners();
  }
  set suratberharga(double val){
    _suratberharga = val;
    notifyListeners();
  }
  set piutang(double val){
    _piutang = val;
    notifyListeners();
  }
  set harta(double val){
    _harta = val;
    notifyListeners();
  }
  set utang(double val){
    _utang = val;
    notifyListeners();
  }
  set sisa(double val){
    _sisa = val;
    notifyListeners();
  }
  set zakat(double val){
    _zakat = val;
    notifyListeners();
  }

  hitungnisab(){
    _harganisab = _emasharga*_emasnisab;
    notifyListeners();
  }
  hitungzakat(){
    _harta = _uang+_suratberharga+_piutang;
    _sisa = _harta-_utang;
    if(_sisa < _harganisab){
      _zakat = 0;
    }else{
      _zakat = _sisa*_zakatkadar;
    }
  }
}