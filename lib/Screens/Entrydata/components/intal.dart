import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:eBindalwasmin/Screens/Beranda/drawerpage.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';

class EntryIntal extends StatefulWidget {
  const EntryIntal({Key key}) : super(key: key);

  @override
  _EntryIntalState createState() => new _EntryIntalState();
}

class _EntryIntalState extends State<EntryIntal> {
  DateTime tanggal = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String formatTanggal = new DateFormat.yMMMd().format(tanggal);
    final sizewidth = MediaQuery.of(context).size.width;

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
        title: Text("Izin Tinggal Terbatas"),
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
                  '1. Izin Kunjungan',
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
                  'a. Pemberian Izin Kunjungan Masa Berlaku 30 hari',
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
                  'b. Perpanjangan Izin Kunjungan Masa Berlaku 30 hari',
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
                  'c. Perpanjangan Izin Kunjungan Masa Berlaku 60 hari',
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
                width: sizewidth,
                decoration: BoxDecoration(color: Colors.blue[200]),
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '2. Izin Tinggal Terbatas',
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
                  'a. Izin Tinggal Terbatas Saat Kedatangan',
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
                  'b. Izin Tinggal Terbatas Masa Berlaku Paling Lama 6 (Enam) Bulan',
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
                  'c. Izin Tinggal Terbatas Masa Berlaku Paling Lama 1 (Satu) Tahun',
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
                  'd. Izin Tinggal Terbatas Masa Berlaku Paling Lama 2 (Dua) Tahun',
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
                  'e. Izin Tinggal Terbatas Khusus Masa Berlaku Paling Lama 5 (lima) Tahun Khusus pada Kawasan Ekonomi Khusus (KEK)',
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
                  'f. Persetujuan Izin Tinggal Terbatas Untuk Pekerja di Perairan Indonesia',
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
                  'g. Teraan Izin Tinggal Terbatas Untuk Pekerja di Perairan Indonesia',
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
                decoration: BoxDecoration(color: Colors.blue[200]),
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '3. Izin Tinggal Tetap',
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
                  'a. Pemberian Izin Tinggal Tetap Masa Berlaku 5 (Lima) Tahun',
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
                  'b. Perpanjangan Izin Tinggal Tetap Masa Berlaku 5 (Lima) Tahun',
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
                  'c. Perpanjangan Izin Tinggal Tetap untuk Jangka Waktu yang Tidak Terbatas',
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
                width: sizewidth,
                decoration: BoxDecoration(color: Colors.blue[200]),
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '4. Izin Masuk Kembali (Re-Entry Permit)',
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
                  'a. Izin Masuk Kembali Masa Berlaku Paling Lama 6 (Enam) Bulan',
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
                  'b. Izin Masuk Kembali Masa Berlaku Paling Lama 1 (Satu) Tahun',
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
                  'c. Izin Masuk Kembali Masa Berlaku Paling Lama 2 (Dua) Tahun',
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
                width: sizewidth,
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'd. Izin Masuk Kembali Masa Berlaku 5 (Lima) Tahun Khusus pada Kawasan Ekonomi Khusus (KEK)',
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
