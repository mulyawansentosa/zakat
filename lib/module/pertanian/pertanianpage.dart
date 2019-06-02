import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakat/module/pertanian/pertanianbloc.dart';
import 'package:zakat/module/pertanian/pertanianwidget.dart';

class PertanianPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PertanianBloc>.value(
          notifier: PertanianBloc(),
        ),
      ],
      child: PertanianWidget(),
    );
  }
}