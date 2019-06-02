import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakat/module/pendapatanjasa/pendapatanjasabloc.dart';
import 'package:zakat/module/pendapatanjasa/pendapatanjasawidget.dart';

class PendapatanJasaPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PendapatanJasaBloc>.value(
          notifier: PendapatanJasaBloc(),
        )
      ],
      child: PendapatanJasaWidget(),
    );
  }
}