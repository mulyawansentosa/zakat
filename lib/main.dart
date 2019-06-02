import 'package:flutter/material.dart';
import 'package:zakat/module/dashboard/dashboard.dart';

void main() => runApp(Zakat());

class Zakat extends StatefulWidget{
  @override
  _ZakatState createState() => _ZakatState();
}

class _ZakatState extends State<Zakat>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard()
    );
  }
}