import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakat/module/uang/uangwidget.dart';
import 'package:zakat/module/uang/uangbloc.dart';

class UangPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UangBloc>.value(
          notifier: UangBloc(),
        ),
      ],
      child: UangWidget(),
    );
  }
}
