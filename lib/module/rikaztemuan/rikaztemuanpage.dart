import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakat/module/rikaztemuan/rikaztemuanwidget.dart';
import 'package:zakat/module/rikaztemuan/rikaztemuanbloc.dart';

class RikazTemuanPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RikazTemuanBloc>.value(
          notifier: RikazTemuanBloc(),
        )
      ],
      child: RikazTemuanWidget(),
    );
  }
}