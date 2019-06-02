import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakat/module/emasperak/emasperakbloc.dart';
import 'package:zakat/module/emasperak/emasperakwidget.dart';

class EmasPerakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<EmasPerakBloc>.value(
          notifier: EmasPerakBloc(),
        )
      ],
      child: EmasPerakWidget(),
    );
  }
}