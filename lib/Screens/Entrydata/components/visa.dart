import 'package:eBindalwasmin/Screens/Login/components/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:eBindalwasmin/Screens/Beranda/drawerpage.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';

class EntryVisa extends StatefulWidget {
  const EntryVisa({Key key}) : super(key: key);

  @override
  _EntryVisaState createState() => new _EntryVisaState();
}

class _EntryVisaState extends State<EntryVisa> {
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
        title: Text("Visa"),
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
                height: 20,
                width: sizewidth,
                decoration: BoxDecoration(color: Colors.blue[200]),
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '1. Visa Kunjungan',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Container(
                width: sizewidth,
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'a. Visa Kunjungan Sekali Perjalanan',
                  style: TextStyle(
                    fontSize: 12,
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
                        // border: new OutlineInputBorder(
                        //   borderRadius: new BorderRadius.circular(10.0),
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
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'b. Visa Kunjungan Beberapa Kali Perjalanan Dihitung per Tahun',
                  style: TextStyle(
                    fontSize: 12,
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
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'c. Visa Kunjungan Saat Kedatangan',
                  style: TextStyle(
                    fontSize: 12,
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
                height: 20,
                width: sizewidth,
                decoration: BoxDecoration(color: Colors.blue[200]),
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '2. Visa Tinggal Terbatas',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Container(
                width: sizewidth,
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'a. Visa Tinggal Terbatas',
                  style: TextStyle(
                    fontSize: 12,
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
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'b. Visa Tinggal Terbatas Saat Kedatangan',
                  style: TextStyle(
                    fontSize: 12,
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
                height: 20,
                width: sizewidth,
                decoration: BoxDecoration(color: Colors.blue[200]),
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '3. Persetujuan Visa Direktur Jenderal Imigrasi',
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
