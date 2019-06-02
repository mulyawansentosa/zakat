import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'uangbloc.dart';

class UangWidget extends StatefulWidget{
  @override
  _UangWidgetState createState() => _UangWidgetState();
}

class _UangWidgetState extends State<UangWidget>{

  var _harganisab     = TextEditingController();
  var _harta          = TextEditingController();
  var _sisa           = TextEditingController();
  var _zakat          = TextEditingController();

  @override
  Widget build(BuildContext context){
    final UangBloc uangbloc = Provider.of<UangBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Zakat Uang dan Surat Berharga'),
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
              hintText: 'Harga Emas Per Gram (Rupiah)',
              labelText: 'Harga Emas Per Gram (Rupiah)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              uangbloc.emasharga = double.parse(input);
              uangbloc.hitungnisab();
              uangbloc.hitungzakat();
              _harganisab.text = uangbloc.harganisab.toString();
              _harta.text = uangbloc.harta.toString();
              _sisa.text = uangbloc.sisa.toString();
              _zakat.text = uangbloc.zakat.toString();
            },
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Nisab',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _harganisab,
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
              hintText: 'Jumlah Uang Tunai dan Tabungan',
              labelText: 'Uang Tunai dan Tabungan',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              uangbloc.uang = double.parse(input);
              uangbloc.hitungzakat();
              _harta.text = uangbloc.harta.toString();
              _sisa.text = uangbloc.sisa.toString();
              _zakat.text = uangbloc.zakat.toString();
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Jumlah Nilai Saham dan Surat Berharga',
              labelText: 'Nilai Saham dan Surat Berharga',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              uangbloc.suratberharga = double.parse(input);
              uangbloc.hitungzakat();
              _harta.text = uangbloc.harta.toString();
              _sisa.text = uangbloc.sisa.toString();
              _zakat.text = uangbloc.zakat.toString();
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Jumlah Nilai Piutang',
              labelText: 'Nilai Piutang',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              uangbloc.piutang = double.parse(input);
              uangbloc.hitungzakat();
              _harta.text = uangbloc.harta.toString();
              _sisa.text = uangbloc.sisa.toString();
              _zakat.text = uangbloc.zakat.toString();
            },
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Total Harta',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _harta,
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
              hintText: 'Jumlah Nilai Hutang',
              labelText: 'Nilai Hutang',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              uangbloc.utang = double.parse(input);
              uangbloc.hitungzakat();
              _harta.text = uangbloc.harta.toString();
              _sisa.text = uangbloc.sisa.toString();
              _zakat.text = uangbloc.zakat.toString();
            },
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Selisih Harta dan Kewajiban',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _sisa,
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
                'Zakat yang Harus Dikeluarkan',
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
        ],
      ),
    );
  }
}