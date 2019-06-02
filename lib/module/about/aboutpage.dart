import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              launch('https://flazhost.com');
            },
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:
                  Stack(alignment: Alignment.bottomCenter, children: <Widget>[
                Image(
                  image: new AssetImage('assets/images/logo.png'),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 0, color: Colors.grey)),
                      child: Text(
                        'Kunjungi Situs',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                )
              ]),
              elevation: 5,
            ),
          ),
          GestureDetector(
            onTap: () {
              launch('https://flazhost.com');
            },
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:
                  Stack(alignment: Alignment.bottomCenter, children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                          child: Text(
                        'Kalkulator Zakat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 30),
                      )),
                      Container(
                        child: Text(
                          'Developed by:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Mulyawan Sentosa',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(
                          'FlazHost.Com',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                )
              ]),
              elevation: 5,
            ),
          ),
        ],
      ),
    );
  }
}
