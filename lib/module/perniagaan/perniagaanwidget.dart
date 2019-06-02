import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'perniagaanbloc.dart';

class PerniagaanWidget extends StatefulWidget {
  @override
  _PerniagaanWidgetState createState() => _PerniagaanWidgetState();
}

class _PerniagaanWidgetState extends State<PerniagaanWidget> {

  var _harganisab   = TextEditingController();
  var _harta        = TextEditingController();
  var _kewajiban    = TextEditingController();
  var _selisih      = TextEditingController();
  var _zakat        = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final PerniagaanBloc perniagaanbloc = Provider.of<PerniagaanBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Zakat Perniagaan'),
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
              perniagaanbloc.emasharga = double.parse(input);
              perniagaanbloc.hitungnisab();
              perniagaanbloc.hitungzakat();
              _harganisab.text = perniagaanbloc.harganisab.toString();
              _harta.text = perniagaanbloc.harta.toString();
              _kewajiban.text = perniagaanbloc.kewajiban.toString();
              _selisih.text = perniagaanbloc.selisih.toString();
              _zakat.text = perniagaanbloc.zakat.toString();
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
              perniagaanbloc.uang = double.parse(input);
              perniagaanbloc.hitungzakat();
              _harganisab.text = perniagaanbloc.harganisab.toString();
              _harta.text = perniagaanbloc.harta.toString();
              _kewajiban.text = perniagaanbloc.kewajiban.toString();
              _selisih.text = perniagaanbloc.selisih.toString();
              _zakat.text = perniagaanbloc.zakat.toString();
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Barang Dagangan',
              labelText: 'Barang Dagangan',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              perniagaanbloc.barang = double.parse(input);
              perniagaanbloc.hitungzakat();
              _harganisab.text = perniagaanbloc.harganisab.toString();
              _harta.text = perniagaanbloc.harta.toString();
              _kewajiban.text = perniagaanbloc.kewajiban.toString();
              _selisih.text = perniagaanbloc.selisih.toString();
              _zakat.text = perniagaanbloc.zakat.toString();
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
              perniagaanbloc.piutang = double.parse(input);
              perniagaanbloc.hitungzakat();
              _harganisab.text = perniagaanbloc.harganisab.toString();
              _harta.text = perniagaanbloc.harta.toString();
              _kewajiban.text = perniagaanbloc.kewajiban.toString();
              _selisih.text = perniagaanbloc.selisih.toString();
              _zakat.text = perniagaanbloc.zakat.toString();
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
              perniagaanbloc.hutang = double.parse(input);
              perniagaanbloc.hitungzakat();
              _harganisab.text = perniagaanbloc.harganisab.toString();
              _harta.text = perniagaanbloc.harta.toString();
              _kewajiban.text = perniagaanbloc.kewajiban.toString();
              _selisih.text = perniagaanbloc.selisih.toString();
              _zakat.text = perniagaanbloc.zakat.toString();
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Jumlah Biaya',
              labelText: 'Jumlah Biaya',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              perniagaanbloc.biaya = double.parse(input);
              perniagaanbloc.hitungzakat();
              _harganisab.text = perniagaanbloc.harganisab.toString();
              _harta.text = perniagaanbloc.harta.toString();
              _kewajiban.text = perniagaanbloc.kewajiban.toString();
              _selisih.text = perniagaanbloc.selisih.toString();
              _zakat.text = perniagaanbloc.zakat.toString();
            },
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Total Hutang dan Biaya',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _kewajiban,
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
                'Selisih Harta dan Kewajiban',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _selisih,
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
