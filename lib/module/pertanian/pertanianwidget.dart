import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakat/module/pertanian/pertanianbloc.dart';

class PertanianWidget extends StatefulWidget {
  @override
  _PertanianWidgetState createState() => _PertanianWidgetState();
}

class _PertanianWidgetState extends State<PertanianWidget> {
  int _pengairan;
  var _zakat = TextEditingController();

  selectPengairan(int val) {
    setState(() {
      _pengairan = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PertanianBloc pertanianbloc = Provider.of<PertanianBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Zakat Pertanian, Kebun, Kehutanan'),
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
              hintText: 'Hasil Panen Gabah (Kg)',
              labelText: 'Hasil Panen Gabah (Kg)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              pertanianbloc.panen = double.parse(input);
              pertanianbloc.hitungzakat();
              _zakat.text = pertanianbloc.zakat.toString();
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Text(
                'Pengairan ',
                style: TextStyle(color: Colors.blue),
              ),
              Radio(
                value: 0,
                groupValue: _pengairan,
                onChanged: (val) {
                  selectPengairan(val);
                  pertanianbloc.kadar = 0.10;
                  pertanianbloc.hitungzakat();
                  _zakat.text = pertanianbloc.zakat.toString();
                },
              ),
              Text('Tanpa Biaya'),
              Radio(
                value: 1,
                groupValue: _pengairan,
                onChanged: (val) {
                  selectPengairan(val);
                  pertanianbloc.kadar = 0.05;
                  pertanianbloc.hitungzakat();
                  _zakat.text = pertanianbloc.zakat.toString();
                },
              ),
              Text('Dengan Biaya'),
            ],
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Zakat yang Harus Dikeluarkan (Kg)',
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
