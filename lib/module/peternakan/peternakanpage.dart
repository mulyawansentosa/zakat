import 'package:flutter/material.dart';
import 'package:zakat/module/peternakan/peternakanbloc.dart';
import 'package:zakat/module/peternakan/peternakanwidget.dart';

import 'package:provider/provider.dart';class PeternakanPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PeternakanBloc>.value(
          notifier: PeternakanBloc(),
        )
      ],
      child: PeternakanWidget(),
    );
  }
}