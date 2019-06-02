import 'package:flutter/material.dart';
import 'package:zakat/module/rikaztemuan/rikaztemuanbloc.dart';
import 'package:provider/provider.dart';

class RikazTemuanWidget extends StatefulWidget{
  @override
  _RikazTemuanWidget createState() => _RikazTemuanWidget();
}

class _RikazTemuanWidget extends State<RikazTemuanWidget>{
  var _zakat = TextEditingController();
  @override
  Widget build(BuildContext context){
    final RikazTemuanBloc rikaztemuanbloc = Provider.of<RikazTemuanBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Zakat Rikaz/Temuan'),
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
              hintText: 'Nilai Harta (Rupiah)',
              labelText: 'Nilai Harta (Rupiah)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              rikaztemuanbloc.harta = double.parse(input);
              rikaztemuanbloc.hitungzakat();
              _zakat.text = rikaztemuanbloc.zakat.toString();
            },
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Zakat Rikaz/Temuan (Rupiah)',
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