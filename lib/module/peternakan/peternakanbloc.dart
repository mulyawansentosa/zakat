import 'package:flutter/material.dart';

class PeternakanBloc extends ChangeNotifier{
  int _kambing = 0;
  int _kambingzakat = 0;
  int _sapi = 0;
  int _sapibetinazakat = 0;
  int _sapijantanzakat = 0;

  int get kambing => _kambing;
  int get kambingzakat => _kambingzakat;
  int get sapi => _sapi;
  int get sapibetinazakat => _sapibetinazakat;
  int get sapijantanzakat => _sapijantanzakat;

  set kambing(int val){
    _kambing = val;
    notifyListeners();
  }

  set kambingzakat(int val){
    _kambingzakat = val;
    notifyListeners();
  }

  set sapi(int val){
    _sapi = val;
    notifyListeners();
  }

  set sapibetinazakat(int val){
    _sapibetinazakat = val;
    notifyListeners();
  }

  set sapijantanzakat(int val){
    _sapijantanzakat = val;
    notifyListeners();
  }

  hitungzakatkambing(){
    if(_kambing < 5){
      _kambingzakat = 0;
    }else if(_kambing < 10){
      _kambingzakat = 1;
    }else if(_kambing < 15){
      _kambingzakat = 2;
    }else if(_kambing < 20){
      _kambingzakat = 3;
    }else if(_kambing < 25){
      _kambingzakat = 4;
    }else{
      _kambingzakat = 4;
    }
    notifyListeners();
  }
  
  hitungzakatsapi(){
    if(_sapi < 30){
      _sapibetinazakat = 0;
      _sapijantanzakat = 0;
    }else if(_sapi < 60){
      _sapibetinazakat = 1;
      _sapijantanzakat = 0;
    }else if(_sapi < 70){
      _sapibetinazakat = 0;
      _sapijantanzakat = 2;
    }else if(_sapi < 80){
      _sapibetinazakat = 1;
      _sapijantanzakat = 1;
    }else if(_sapi < 90){
      _sapibetinazakat = 2;
      _sapijantanzakat = 0;
    }else if(_sapi < 110){
      _sapibetinazakat = 0;
      _sapijantanzakat = 3;
    }else if(_sapi < 120){
      _sapibetinazakat = 2;
      _sapijantanzakat = 1;
    }else{
      _sapibetinazakat = 3;
      _sapijantanzakat = 3;
    }
    notifyListeners();
  }
}