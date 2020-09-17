import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:eBindalwasmin/Screens/Beranda/drawerpage.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';

class EntryItk extends StatefulWidget {
  const EntryItk({Key key}) : super(key: key);

  @override
  _EntryItkState createState() => new _EntryItkState();
}

class _EntryItkState extends State<EntryItk> {
  DateTime tanggal = DateTime.now();
  @override
  Widget build(BuildContext context) {
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
        title: Text("Izin Tinggal Kunjungan"),
        backgroundColor: Colors.purple,
      ),
      drawer: DrawerPage(),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: new EdgeInsets.only(top: 20, left: 10, bottom: 20, right: 10),
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
              Divider(),
              Text(
                '1. Paspor Biasa 48 Halaman',
                style: TextStyle(fontSize: 14),
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
              Divider(),
              Text(
                '2. Paspor Biasa 48 Halaman Elektronik',
                style: TextStyle(fontSize: 14),
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
              Divider(),
              Text(
                '3. Layanan Percepatan Paspor Pada Hari Yang Sama',
                style: TextStyle(fontSize: 14),
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
              Divider(),
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
