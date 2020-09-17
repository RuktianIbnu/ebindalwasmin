import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:eBindalwasmin/Screens/Beranda/drawerpage.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';

class EntryPaspor extends StatefulWidget {
  const EntryPaspor({Key key}) : super(key: key);

  @override
  _EntryPasporState createState() => new _EntryPasporState();
}

class _EntryPasporState extends State<EntryPaspor> {
  DateTime tanggal = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final sizewidth = MediaQuery.of(context).size.width;
    String formatTanggal = new DateFormat.yMMMd().format(tanggal);

    Future<Null> _selectDate(BuildContext context) async {
      final DateTime _seldate = await showDatePicker(
          context: context,
          initialDate: tanggal,
          firstDate: DateTime(1990),
          lastDate: DateTime(2050),
          builder: (context, child) {
            return SingleChildScrollView(
              child: child,
            );
          });

      if (_seldate != null) {
        setState(() {
          tanggal = _seldate;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Dokumen Perjalanan Republik Indonesia"),
        backgroundColor: Colors.purple,
      ),
      drawer: DrawerPage(),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: new EdgeInsets.only(top: 0, left: 10, bottom: 20, right: 10),
        decoration: new BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('$formatTanggal'),
                  IconButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    icon: Icon(Icons.calendar_today),
                  ),
                ],
              ),
              new Container(
                width: sizewidth,
                decoration: BoxDecoration(color: Colors.blue[200]),
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '1. Paspor Biasa 48 Halarnan',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Row(
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Jumlah Pria',
                        // border: new OutlineInputBorder(
                        //   borderRadius: new BorderRadius.circular(20.0),
                        // ),
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Jumlah Pria',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Total',
                      ),
                    ),
                  ),
                ],
              ),
              new Container(
                width: sizewidth,
                decoration: BoxDecoration(color: Colors.blue[200]),
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '2. Paspor Biasa 48 Halaman Elektronik',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Jumlah Pria',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Jumlah Wanita',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Total',
                      ),
                    ),
                  ),
                ],
              ),
              new Container(
                width: sizewidth,
                decoration: BoxDecoration(color: Colors.blue[200]),
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '3. Surat Perjalanan Laksana Paspor untuk Orang Asing',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Row(
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Jumlah Pria',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Jumlah Wanita',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Total',
                      ),
                    ),
                  ),
                ],
              ),
              new Container(
                width: sizewidth,
                decoration: BoxDecoration(color: Colors.blue[200]),
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '4. Layanan Percepatan Paspor Selesai Pada Hari yang Sama',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Row(
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Jumlah Pria',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Jumlah Wanita',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Total',
                      ),
                    ),
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedButton(
                    text: "Simpan",
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
