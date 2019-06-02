import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'emasperakbloc.dart';

class EmasPerakWidget extends StatefulWidget {
  @override
  _EmasPerakWidgetState createState() => _EmasPerakWidgetState();
}

class _EmasPerakWidgetState extends State<EmasPerakWidget> {

  var _emas       = TextEditingController();
  var _emaszakat  = TextEditingController();
  var _emastotal  = TextEditingController();

  var _perak      = TextEditingController();
  var _perakzakat = TextEditingController();
  var _peraktotal = TextEditingController();

  var _emasperaktotal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final EmasPerakBloc emasperakbloc = Provider.of<EmasPerakBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Emas dan Perak'),
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
              hintText: 'Masukan Jumlah Emas (gram)',
              labelText: 'Jumlah Emas (gram)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              emasperakbloc.emas = double.parse(input);
              emasperakbloc.emaszakathitung();
              _emas.text = emasperakbloc.emas.toString();
              _emaszakat.text = emasperakbloc.emaszakat.toString();
              _emastotal.text = emasperakbloc.emastotal.toString();
              _emasperaktotal.text = emasperakbloc.emasperaktotal.toString();
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Masukan Jumlah Perak (gram)',
              labelText: 'Jumlah Perak (gram)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              emasperakbloc.perak = double.parse(input);
              emasperakbloc.perakzakathitung();
              _perak.text = emasperakbloc.perak.toString();
              _perakzakat.text = emasperakbloc.perakzakat.toString();
              _peraktotal.text = emasperakbloc.peraktotal.toString();
              _emasperaktotal.text = emasperakbloc.emasperaktotal.toString();
            },
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Jumlah Zakat Emas (gram)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _emaszakat,
            enabled: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Jumlah Zakat Perak (gram)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _perakzakat,
            enabled: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Harga Mas Per Gram (gram)',
              labelText: 'Harga Mas Per Gram (gram)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              emasperakbloc.emasharga = double.parse(input);
              emasperakbloc.emaszakathitung();
              _emas.text = emasperakbloc.emas.toString();
              _emaszakat.text = emasperakbloc.emaszakat.toString();
              _emastotal.text = emasperakbloc.emastotal.toString();
              _emasperaktotal.text= emasperakbloc.emasperaktotal.toString();
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Harga Perak Per Gram (gram)',
              labelText: 'Harga Perak Per Gram (gram)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              emasperakbloc.perakharga = double.parse(input);
              emasperakbloc.perakzakathitung();
              _perak.text = emasperakbloc.perak.toString();
              _perakzakat.text = emasperakbloc.perakzakat.toString();
              _peraktotal.text = emasperakbloc.peraktotal.toString();
              _emasperaktotal.text = emasperakbloc.emasperaktotal.toString();
            },
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Jumlah Zakat Emas (Rupiah)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _emastotal,
            enabled: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Jumlah Zakat Perak (Rupiah)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _peraktotal,
            enabled: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Jumlah Zakat Emas dan Perak (Rupiah)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _emasperaktotal,
            enabled: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}
