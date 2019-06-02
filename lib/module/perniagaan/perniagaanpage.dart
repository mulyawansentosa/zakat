import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakat/module/perniagaan/perniagaanbloc.dart';
import 'package:zakat/module/perniagaan/perniagaanwidget.dart';

class PerniagaanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PerniagaanBloc>.value(
          notifier: PerniagaanBloc(),
        ),
      ],
      child: PerniagaanWidget(),
    );
  }
}
