import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakat/module/peternakan/peternakanbloc.dart';

class PeternakanWidget extends StatefulWidget{
  @override
  _PeternakanWidgetState createState() => _PeternakanWidgetState();
}

class _PeternakanWidgetState extends State<PeternakanWidget>{
  var _kambingzakat = TextEditingController();
  var _sapibetinazakat = TextEditingController();
  var _sapijantanzakat = TextEditingController();

  @override
  Widget build(BuildContext context){
    final PeternakanBloc peternakanbloc = Provider.of<PeternakanBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Peternakan'),
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
              hintText: 'Jumlah Kambing (Ekor)',
              labelText: 'Jumlah Kambing (Ekor)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              peternakanbloc.kambing = int.parse(input);
              peternakanbloc.hitungzakatkambing();
              _kambingzakat.text = peternakanbloc.kambingzakat.toString();
            },
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Zakat Kambing (Ekor)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _kambingzakat,
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
              hintText: 'Jumlah Sapi (Ekor)',
              labelText: 'Jumlah Sapi (Ekor)',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onChanged: (input) {
              peternakanbloc.sapi = int.parse(input);
              peternakanbloc.hitungzakatsapi();
              _sapibetinazakat.text = peternakanbloc.sapibetinazakat.toString();
              _sapijantanzakat.text = peternakanbloc.sapijantanzakat.toString();
            },
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Zakat Anak Sapi Betina (Ekor)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _sapibetinazakat,
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
                'Zakat Anak Sapi Jantan (Ekor)',
                style: TextStyle(color: Colors.blue),
              )),
          TextField(
            controller: _sapijantanzakat,
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