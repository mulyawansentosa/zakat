import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakat/module/pendapatanjasa/pendapatanjasabloc.dart';

class PendapatanJasaWidget extends StatefulWidget {
  @override
  _PendapatanJasaWidgetState createState() => _PendapatanJasaWidgetState();
}

class _PendapatanJasaWidgetState extends State<PendapatanJasaWidget> {
  var _nisab = TextEditingController();
  var _total = TextEditingController();
  var _zakat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final PendapatanJasaBloc pendapatanjasabloc =
        Provider.of<PendapatanJasaBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pendapatan & Jasa'),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Harga 1 Kg Beras (Rupiah)',
              labelText: 'Harga 1 Kg Beras (Rupiah)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              pendapatanjasabloc.berasharga = double.parse(input);
              pendapatanjasabloc.hitungnisab();
              pendapatanjasabloc.hitungzakat();
              _nisab.text = pendapatanjasabloc.nisab.toString();
            },
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Nisab Pendapatan (Rupiah)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _nisab,
            enabled: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Pendapatan (Rupiah)',
              labelText: 'Pendapatan (Rupiah)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              pendapatanjasabloc.pendapatan = double.parse(input);
              pendapatanjasabloc.hitungzakat();
              _total.text = pendapatanjasabloc.total.toString();
              _zakat.text = pendapatanjasabloc.zakat.toString();
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Jasa (Rupiah)',
              labelText: 'Jasa (Rupiah)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              pendapatanjasabloc.jasa = double.parse(input);
              pendapatanjasabloc.hitungzakat();
              _total.text = pendapatanjasabloc.total.toString();
              _zakat.text = pendapatanjasabloc.zakat.toString();
            },
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Total Pendapatan & Jasa (Rupiah)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _total,
            enabled: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Zakat yang Harus Dikeluarga (Rupiah)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _zakat,
            enabled: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
