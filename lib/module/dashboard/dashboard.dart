import 'package:flutter/material.dart';
import 'package:zakat/module/emasperak/emasperakpage.dart';
import 'package:zakat/module/pendapatanjasa/pendapatanjasapage.dart';
import 'package:zakat/module/pertanian/pertanianpage.dart';
import 'package:zakat/module/peternakan/peternakanpage.dart';
import 'package:zakat/module/rikaztemuan/rikaztemuanpage.dart';
import 'package:zakat/module/uang/uangpage.dart';
import 'package:zakat/module/perniagaan/perniagaanpage.dart';
import 'package:zakat/module/about/aboutpage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Kalkulator Zakat'),
            ),
            body: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Flexible(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EmasPerakPage()));
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  Image(
                                    image: new AssetImage(
                                        'assets/images/emas.jpg'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 0, color: Colors.grey)),
                                        child: Text(
                                          'Emas dan Perak',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                  )
                                ]),
                            elevation: 5,
                          ),
                        )),
                    Flexible(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UangPage()));
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  Image(
                                    image: new AssetImage(
                                        'assets/images/uang.jpg'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 0, color: Colors.grey)),
                                        child: Text(
                                          'Uang',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                  )
                                ]),
                            elevation: 5,
                          ),
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PerniagaanPage()));
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  Image(
                                    image: new AssetImage(
                                        'assets/images/niaga.jpg'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 0, color: Colors.grey)),
                                        child: Text(
                                          'Perniagaan',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                  )
                                ]),
                            elevation: 5,
                          ),
                        )),
                    Flexible(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PertanianPage()));
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  Image(
                                    image: new AssetImage(
                                        'assets/images/pertanian.jpg'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 0, color: Colors.grey)),
                                        child: Text(
                                          'Pertanian',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                  )
                                ]),
                            elevation: 5,
                          ),
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PeternakanPage()));
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  Image(
                                    image: new AssetImage(
                                        'assets/images/ternak.jpg'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 0, color: Colors.grey)),
                                        child: Text(
                                          'Peternakan',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                  )
                                ]),
                            elevation: 5,
                          ),
                        )),
                    Flexible(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PendapatanJasaPage()));
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  Image(
                                    image: new AssetImage(
                                        'assets/images/pendapatan.jpg'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 0, color: Colors.grey)),
                                        child: Text(
                                          'Pendapatan & Jasa',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                  )
                                ]),
                            elevation: 5,
                          ),
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RikazTemuanPage()));
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  Image(
                                    image: new AssetImage(
                                        'assets/images/rikaz.jpg'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 0, color: Colors.grey)),
                                        child: Text(
                                          'Rikaz / Barang Temuan',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                  )
                                ]),
                            elevation: 5,
                          ),
                        )),
                    Flexible(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AboutPage()));
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  Image(
                                    image: new AssetImage(
                                        'assets/images/logo.png'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 0, color: Colors.grey)),
                                        child: Text(
                                          'Tentang Aplikasi',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                  )
                                ]),
                            elevation: 5,
                          ),
                        )),
                  ],
                ),
              ],
            )));
  }
}
