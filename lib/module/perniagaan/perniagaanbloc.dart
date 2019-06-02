import 'package:flutter/material.dart';

class PerniagaanBloc extends ChangeNotifier{
  double _emasharga   = 0;
  double _emasnisab   = 85;
  double _harganisab  = 0;
  double _kadar       = 0.025;
  double _uang        = 0;
  double _barang      = 0;
  double _piutang     = 0;
  double _harta       = 0;
  double _hutang      = 0;
  double _biaya       = 0;
  double _kewajiban   = 0;
  double _selisih     = 0;
  double _zakat       = 0;

  double get emasharga  => _emasharga;
  double get emasnisab  => _emasnisab;
  double get harganisab => _harganisab;
  double get kadar      => _kadar;
  double get uang       => _uang;
  double get barang     => _barang;
  double get piutang    => _piutang;
  double get harta      => _harta;
  double get hutang     => _hutang;
  double get biaya      => _biaya;
  double get kewajiban  => _kewajiban;
  double get selisih    => _selisih;
  double get zakat      => _zakat;

  set emasharga(double val){
    _emasharga = val;
    notifyListeners();
  }
  set emasnisab(double val){
    _emasnisab = val;
    notifyListeners();
  }
  set harganisab(double val){
    _harganisab = val;
    notifyListeners();
  }
  set kadar(double val){
    _kadar = val;
  }
  set uang(double val){
    _uang = val;
    notifyListeners();
  }
  set barang(double val){
    _barang = val;
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
  set hutang(double val){
    _hutang = val;
    notifyListeners();
  }
  set biaya(double val){
    _biaya = val;
    notifyListeners();
  }
  set kewajiban(double val){
    _kewajiban = val;
    notifyListeners();
  }
  set selisih(double val){
    _selisih = val;
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
    _harta      = _uang+_barang+_piutang;
    _kewajiban  = _hutang+_biaya;
    _selisih = _harta-_kewajiban;
    if(_selisih < _harganisab){
      _zakat = 0;
    }else{
      _zakat = _selisih*_kadar;
    }
  }

}