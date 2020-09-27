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
// INTAL 1 ##################################################################################################
  final int intal1a = 100000;
  int pria1a;
  int wanita1a;
  int total1a;
  TextEditingController _ctrlPria1a = TextEditingController();
  TextEditingController _ctrlWanita1a = TextEditingController();
  TextEditingController _ctrlTotal1a = TextEditingController();

  final int intal1b = 100000;
  int pria1b;
  int wanita1b;
  int total1b;
  TextEditingController _ctrlPria1b = TextEditingController();
  TextEditingController _ctrlWanita1b = TextEditingController();
  TextEditingController _ctrlTotal1b = TextEditingController();
  
  final int intal1c = 100000;
  int pria1c;
  int wanita1c;
  int total1c;
  TextEditingController _ctrlPria1c = TextEditingController();
  TextEditingController _ctrlWanita1c = TextEditingController();
  TextEditingController _ctrlTotal1c = TextEditingController();
//####################################################################################################
// INTAL 2 ##################################################################################################
  final int intal2a = 100000;
  int pria2a;
  int wanita2a;
  int total2a;
  TextEditingController _ctrlPria2a = TextEditingController();
  TextEditingController _ctrlWanita2a = TextEditingController();
  TextEditingController _ctrlTotal2a = TextEditingController();

  final int intal2b = 100000;
  int pria2b;
  int wanita2b;
  int total2b;
  TextEditingController _ctrlPria2b = TextEditingController();
  TextEditingController _ctrlWanita2b = TextEditingController();
  TextEditingController _ctrlTotal2b = TextEditingController();
  
  final int intal2c = 100000;
  int pria2c;
  int wanita2c;
  int total2c;
  TextEditingController _ctrlPria2c = TextEditingController();
  TextEditingController _ctrlWanita2c = TextEditingController();
  TextEditingController _ctrlTotal2c = TextEditingController();

  final int intal2d = 100000;
  int pria2d;
  int wanita2d;
  int total2d;
  TextEditingController _ctrlPria2d = TextEditingController();
  TextEditingController _ctrlWanita2d = TextEditingController();
  TextEditingController _ctrlTotal2d = TextEditingController();

  final int intal2e = 100000;
  int pria2e;
  int wanita2e;
  int total2e;
  TextEditingController _ctrlPria2e = TextEditingController();
  TextEditingController _ctrlWanita2e = TextEditingController();
  TextEditingController _ctrlTotal2e = TextEditingController();
  
  final int intal2f = 100000;
  int pria2f;
  int wanita2f;
  int total2f;
  TextEditingController _ctrlPria2f = TextEditingController();
  TextEditingController _ctrlWanita2f = TextEditingController();
  TextEditingController _ctrlTotal2f = TextEditingController();

  final int intal2g = 100000;
  int pria2g;
  int wanita2g;
  int total2g;
  TextEditingController _ctrlPria2g = TextEditingController();
  TextEditingController _ctrlWanita2g = TextEditingController();
  TextEditingController _ctrlTotal2g = TextEditingController();
//####################################################################################################
// INTAL 3 ##################################################################################################
  final int intal3a = 100000;
  int pria3a;
  int wanita3a;
  int total3a;
  TextEditingController _ctrlPria3a = TextEditingController();
  TextEditingController _ctrlWanita3a = TextEditingController();
  TextEditingController _ctrlTotal3a = TextEditingController();

  final int intal3b = 100000;
  int pria3b;
  int wanita3b;
  int total3b;
  TextEditingController _ctrlPria3b = TextEditingController();
  TextEditingController _ctrlWanita3b = TextEditingController();
  TextEditingController _ctrlTotal3b = TextEditingController();
  
  final int intal3c = 100000;
  int pria3c;
  int wanita3c;
  int total3c;
  TextEditingController _ctrlPria3c = TextEditingController();
  TextEditingController _ctrlWanita3c = TextEditingController();
  TextEditingController _ctrlTotal3c = TextEditingController();
//####################################################################################################
// INTAL 4 ##################################################################################################
  final int intal4a = 100000;
  int pria4a;
  int wanita4a;
  int total4a;
  TextEditingController _ctrlPria4a = TextEditingController();
  TextEditingController _ctrlWanita4a = TextEditingController();
  TextEditingController _ctrlTotal4a = TextEditingController();

  final int intal4b = 100000;
  int pria4b;
  int wanita4b;
  int total4b;
  TextEditingController _ctrlPria4b = TextEditingController();
  TextEditingController _ctrlWanita4b = TextEditingController();
  TextEditingController _ctrlTotal4b = TextEditingController();
  
  final int intal4c = 100000;
  int pria4c;
  int wanita4c;
  int total4c;
  TextEditingController _ctrlPria4c = TextEditingController();
  TextEditingController _ctrlWanita4c = TextEditingController();
  TextEditingController _ctrlTotal4c = TextEditingController();

  final int intal4d = 100000;
  int pria4d;
  int wanita4d;
  int total4d;
  TextEditingController _ctrlPria4d = TextEditingController();
  TextEditingController _ctrlWanita4d = TextEditingController();
  TextEditingController _ctrlTotal4d = TextEditingController();
//####################################################################################################

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
        padding: new EdgeInsets.only(top: 20, left: 10, bottom: 20, right: 10),
        decoration: new BoxDecoration(color: Colors.blueGrey[200]),
        child: SingleChildScrollView(
          child: Container(
            padding:
                new EdgeInsets.only(top: 0, left: 10, bottom: 20, right: 10),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.circular(20.0),
            ),
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
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(5),
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
                    new Flexible(child: _buildTextFieldPria1a()),
                    new Flexible(child: _buildTextFieldWanita1a()),
                    new Flexible(child: _buildTextFieldTotal1a()),
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
                    new Flexible(child: _buildTextFieldPria1b()),
                    new Flexible(child: _buildTextFieldWanita1b()),
                    new Flexible(child: _buildTextFieldTotal1b()),
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
                    new Flexible(child: _buildTextFieldPria1c()),
                    new Flexible(child: _buildTextFieldWanita1c()),
                    new Flexible(child: _buildTextFieldTotal1c()),
                  ],
                ),
                new Container(
                  width: sizewidth,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(5),
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
                    new Flexible(child: _buildTextFieldPria2a()),
                    new Flexible(child: _buildTextFieldWanita2a()),
                    new Flexible(child: _buildTextFieldTotal2a()),
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
                    new Flexible(child: _buildTextFieldPria2b()),
                    new Flexible(child: _buildTextFieldWanita2b()),
                    new Flexible(child: _buildTextFieldTotal2b()),
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
                    new Flexible(child: _buildTextFieldPria2c()),
                    new Flexible(child: _buildTextFieldWanita2c()),
                    new Flexible(child: _buildTextFieldTotal2c()),
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
                    new Flexible(child: _buildTextFieldPria2d()),
                    new Flexible(child: _buildTextFieldWanita2d()),
                    new Flexible(child: _buildTextFieldTotal2d()),
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
                    new Flexible(child: _buildTextFieldPria2e()),
                    new Flexible(child: _buildTextFieldWanita2e()),
                    new Flexible(child: _buildTextFieldTotal2e()),
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
                    new Flexible(child: _buildTextFieldPria2f()),
                    new Flexible(child: _buildTextFieldWanita2f()),
                    new Flexible(child: _buildTextFieldTotal2f()),
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
                    new Flexible(child: _buildTextFieldPria2g()),
                    new Flexible(child: _buildTextFieldWanita2g()),
                    new Flexible(child: _buildTextFieldTotal2g()),
                  ],
                ),
                new Container(
                  width: sizewidth,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(5),
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
                    new Flexible(child: _buildTextFieldPria3a()),
                    new Flexible(child: _buildTextFieldWanita3a()),
                    new Flexible(child: _buildTextFieldTotal3a()),
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
                    new Flexible(child: _buildTextFieldPria3b()),
                    new Flexible(child: _buildTextFieldWanita3b()),
                    new Flexible(child: _buildTextFieldTotal3b()),
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
                    new Flexible(child: _buildTextFieldPria3c()),
                    new Flexible(child: _buildTextFieldWanita3c()),
                    new Flexible(child: _buildTextFieldTotal3c()),
                  ],
                ),
                new Container(
                  width: sizewidth,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(5),
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
                    new Flexible(child: _buildTextFieldPria4a()),
                    new Flexible(child: _buildTextFieldWanita4a()),
                    new Flexible(child: _buildTextFieldTotal4a()),
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
                    new Flexible(child: _buildTextFieldPria4b()),
                    new Flexible(child: _buildTextFieldWanita4b()),
                    new Flexible(child: _buildTextFieldTotal4b()),
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
                    new Flexible(child: _buildTextFieldPria4c()),
                    new Flexible(child: _buildTextFieldWanita4c()),
                    new Flexible(child: _buildTextFieldTotal4c()),
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
                    new Flexible(child: _buildTextFieldPria4d()),
                    new Flexible(child: _buildTextFieldWanita4d()),
                    new Flexible(child: _buildTextFieldTotal4d()),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundedButton(
                        text: "Simpan",
                        press: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 1 #######################################################
  Widget _buildTextFieldPria1a() {
    return TextField(
      controller: _ctrlPria1a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria1a = int.parse(_ctrlPria1a.text);
        wanita1a = int.parse(_ctrlWanita1a.text);
        if (wanita1a == null || wanita1a == 0) {
          wanita1a = 0;
        }
        total1a = (pria1a + wanita1a) * intal1a;
        _ctrlTotal1a.text = "$total1a";
      },
    );
  }

  Widget _buildTextFieldWanita1a() {
    return TextField(
      controller: _ctrlWanita1a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria1a = int.parse(_ctrlPria1a.text);
        wanita1a = int.parse(_ctrlWanita1a.text);
        total1a = (pria1a + wanita1a) * intal1a;
        _ctrlTotal1a.text = "$total1a";
      },
    );
  }

  Widget _buildTextFieldTotal1a() {
    return TextField(
      controller: _ctrlTotal1a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria1b() {
    return TextField(
      controller: _ctrlPria1b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria1b = int.parse(_ctrlPria1b.text);
        wanita1b = int.parse(_ctrlWanita1b.text);
        if (wanita1b == null || wanita1b == 0) {
          wanita1b = 0;
        }
        total1b = (pria1b + wanita1b) * intal1b;
        _ctrlTotal1b.text = "$total1b";
      },
    );
  }

  Widget _buildTextFieldWanita1b() {
    return TextField(
      controller: _ctrlWanita1b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria1b = int.parse(_ctrlPria1b.text);
        wanita1b = int.parse(_ctrlWanita1b.text);
        total1b = (pria1b + wanita1b) * intal1b;
        _ctrlTotal1b.text = "$total1b";
      },
    );
  }

  Widget _buildTextFieldTotal1b() {
    return TextField(
      controller: _ctrlTotal1b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria1c() {
    return TextField(
      controller: _ctrlPria1c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria1c = int.parse(_ctrlPria1c.text);
        wanita1c = int.parse(_ctrlWanita1c.text);
        if (wanita1c == null || wanita1c == 0) {
          wanita1c = 0;
        }
        total1c = (pria1c + wanita1c) * intal1c;
        _ctrlTotal1c.text = "$total1c";
      },
    );
  }

  Widget _buildTextFieldWanita1c() {
    return TextField(
      controller: _ctrlWanita1c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria1c = int.parse(_ctrlPria1c.text);
        wanita1c = int.parse(_ctrlWanita1c.text);
        total1c = (pria1c + wanita1c) * intal1c;
        _ctrlTotal1c.text = "$total1c";
      },
    );
  }

  Widget _buildTextFieldTotal1c() {
    return TextField(
      controller: _ctrlTotal1c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }
  //############################################################

  // 2 #######################################################
  Widget _buildTextFieldPria2a() {
    return TextField(
      controller: _ctrlPria2a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria2a = int.parse(_ctrlPria2a.text);
        wanita2a = int.parse(_ctrlWanita2a.text);
        if (wanita2a == null || wanita2a == 0) {
          wanita2a = 0;
        }
        total2a = (pria2a + wanita2a) * intal2a;
        _ctrlTotal2a.text = "$total2a";
      },
    );
  }

  Widget _buildTextFieldWanita2a() {
    return TextField(
      controller: _ctrlWanita2a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria2a = int.parse(_ctrlPria2a.text);
        wanita2a = int.parse(_ctrlWanita2a.text);
        total2a = (pria2a + wanita2a) * intal2a;
        _ctrlTotal2a.text = "$total2a";
      },
    );
  }

  Widget _buildTextFieldTotal2a() {
    return TextField(
      controller: _ctrlTotal2a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria2b() {
    return TextField(
      controller: _ctrlPria2b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria2b = int.parse(_ctrlPria2b.text);
        wanita2b = int.parse(_ctrlWanita2b.text);
        if (wanita2b == null || wanita2b == 0) {
          wanita2b = 0;
        }
        total2b = (pria2b + wanita2b) * intal2b;
        _ctrlTotal2b.text = "$total2b";
      },
    );
  }

  Widget _buildTextFieldWanita2b() {
    return TextField(
      controller: _ctrlWanita2b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria2b = int.parse(_ctrlPria2b.text);
        wanita2b = int.parse(_ctrlWanita2b.text);
        total2b = (pria2b + wanita2b) * intal2b;
        _ctrlTotal2b.text = "$total2b";
      },
    );
  }

  Widget _buildTextFieldTotal2b() {
    return TextField(
      controller: _ctrlTotal2b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria2c() {
    return TextField(
      controller: _ctrlPria2c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria2c = int.parse(_ctrlPria2c.text);
        wanita2c = int.parse(_ctrlWanita2c.text);
        if (wanita2c == null || wanita2c == 0) {
          wanita2c = 0;
        }
        total2c = (pria2c + wanita2c) * intal2c;
        _ctrlTotal2c.text = "$total2c";
      },
    );
  }

  Widget _buildTextFieldWanita2c() {
    return TextField(
      controller: _ctrlWanita2c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria2c = int.parse(_ctrlPria2c.text);
        wanita2c = int.parse(_ctrlWanita2c.text);
        total2c = (pria2c + wanita2c) * intal2c;
        _ctrlTotal2c.text = "$total2c";
      },
    );
  }

  Widget _buildTextFieldTotal2c() {
    return TextField(
      controller: _ctrlTotal2c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria2d() {
    return TextField(
      controller: _ctrlPria2d,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria2d = int.parse(_ctrlPria2d.text);
        wanita2d = int.parse(_ctrlWanita2d.text);
        if (wanita2d == null || wanita2d == 0) {
          wanita2d = 0;
        }
        total2d = (pria2d + wanita2d) * intal2d;
        _ctrlTotal2d.text = "$total2d";
      },
    );
  }

  Widget _buildTextFieldWanita2d() {
    return TextField(
      controller: _ctrlWanita2d,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria2d = int.parse(_ctrlPria2d.text);
        wanita2d = int.parse(_ctrlWanita2d.text);
        total2d = (pria2d + wanita2d) * intal2d;
        _ctrlTotal2d.text = "$total2d";
      },
    );
  }

  Widget _buildTextFieldTotal2d() {
    return TextField(
      controller: _ctrlTotal2d,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria2e() {
    return TextField(
      controller: _ctrlPria2e,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria2e = int.parse(_ctrlPria2e.text);
        wanita2e = int.parse(_ctrlWanita2e.text);
        if (wanita2e == null || wanita2e == 0) {
          wanita2e = 0;
        }
        total2e = (pria2e + wanita2e) * intal2e;
        _ctrlTotal2e.text = "$total2e";
      },
    );
  }

  Widget _buildTextFieldWanita2e() {
    return TextField(
      controller: _ctrlWanita2e,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria2e = int.parse(_ctrlPria2e.text);
        wanita2e = int.parse(_ctrlWanita2e.text);
        total2e = (pria2e + wanita2e) * intal2e;
        _ctrlTotal2e.text = "$total2e";
      },
    );
  }

  Widget _buildTextFieldTotal2e() {
    return TextField(
      controller: _ctrlTotal2e,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria2f() {
    return TextField(
      controller: _ctrlPria2f,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria2f = int.parse(_ctrlPria2f.text);
        wanita2f = int.parse(_ctrlWanita2f.text);
        if (wanita2f == null || wanita2f == 0) {
          wanita2f = 0;
        }
        total2f = (pria2f + wanita2f) * intal2f;
        _ctrlTotal2f.text = "$total2f";
      },
    );
  }

  Widget _buildTextFieldWanita2f() {
    return TextField(
      controller: _ctrlWanita2f,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria2f = int.parse(_ctrlPria2f.text);
        wanita2f = int.parse(_ctrlWanita2f.text);
        total2f = (pria2f + wanita2f) * intal2f;
        _ctrlTotal2f.text = "$total2f";
      },
    );
  }

  Widget _buildTextFieldTotal2f() {
    return TextField(
      controller: _ctrlTotal2f,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria2g() {
    return TextField(
      controller: _ctrlPria2g,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria2g = int.parse(_ctrlPria2g.text);
        wanita2g = int.parse(_ctrlWanita2g.text);
        if (wanita2g == null || wanita2g == 0) {
          wanita2g = 0;
        }
        total2g = (pria2g + wanita2g) * intal2g;
        _ctrlTotal2g.text = "$total2g";
      },
    );
  }

  Widget _buildTextFieldWanita2g() {
    return TextField(
      controller: _ctrlWanita2g,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria2g = int.parse(_ctrlPria2g.text);
        wanita2g = int.parse(_ctrlWanita2g.text);
        total2g = (pria2g + wanita2g) * intal2g;
        _ctrlTotal2g.text = "$total2g";
      },
    );
  }

  Widget _buildTextFieldTotal2g() {
    return TextField(
      controller: _ctrlTotal2g,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }
  //############################################################
  // 3 #######################################################
  Widget _buildTextFieldPria3a() {
    return TextField(
      controller: _ctrlPria3a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria3a = int.parse(_ctrlPria3a.text);
        wanita3a = int.parse(_ctrlWanita3a.text);
        if (wanita3a == null || wanita3a == 0) {
          wanita3a = 0;
        }
        total3a = (pria3a + wanita3a) * intal3a;
        _ctrlTotal3a.text = "$total3a";
      },
    );
  }

  Widget _buildTextFieldWanita3a() {
    return TextField(
      controller: _ctrlWanita3a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria3a = int.parse(_ctrlPria3a.text);
        wanita3a = int.parse(_ctrlWanita3a.text);
        total3a = (pria3a + wanita3a) * intal3a;
        _ctrlTotal3a.text = "$total3a";
      },
    );
  }

  Widget _buildTextFieldTotal3a() {
    return TextField(
      controller: _ctrlTotal3a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria3b() {
    return TextField(
      controller: _ctrlPria3b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria3b = int.parse(_ctrlPria3b.text);
        wanita3b = int.parse(_ctrlWanita3b.text);
        if (wanita3b == null || wanita3b == 0) {
          wanita3b = 0;
        }
        total3b = (pria3b + wanita3b) * intal3b;
        _ctrlTotal3b.text = "$total3b";
      },
    );
  }

  Widget _buildTextFieldWanita3b() {
    return TextField(
      controller: _ctrlWanita3b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria3b = int.parse(_ctrlPria3b.text);
        wanita3b = int.parse(_ctrlWanita3b.text);
        total3b = (pria3b + wanita3b) * intal3b;
        _ctrlTotal3b.text = "$total3b";
      },
    );
  }

  Widget _buildTextFieldTotal3b() {
    return TextField(
      controller: _ctrlTotal3b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria3c() {
    return TextField(
      controller: _ctrlPria3c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria3c = int.parse(_ctrlPria3c.text);
        wanita3c = int.parse(_ctrlWanita3c.text);
        if (wanita3c == null || wanita3c == 0) {
          wanita3c = 0;
        }
        total3c = (pria3c + wanita3c) * intal3c;
        _ctrlTotal3c.text = "$total3c";
      },
    );
  }

  Widget _buildTextFieldWanita3c() {
    return TextField(
      controller: _ctrlWanita3c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria3c = int.parse(_ctrlPria3c.text);
        wanita3c = int.parse(_ctrlWanita3c.text);
        total3c = (pria3c + wanita3c) * intal3c;
        _ctrlTotal3c.text = "$total3c";
      },
    );
  }

  Widget _buildTextFieldTotal3c() {
    return TextField(
      controller: _ctrlTotal3c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }
  //############################################################
  // 4 #######################################################
  Widget _buildTextFieldPria4a() {
    return TextField(
      controller: _ctrlPria4a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria4a = int.parse(_ctrlPria4a.text);
        wanita4a = int.parse(_ctrlWanita4a.text);
        if (wanita4a == null || wanita4a == 0) {
          wanita4a = 0;
        }
        total4a = (pria4a + wanita4a) * intal4a;
        _ctrlTotal4a.text = "$total4a";
      },
    );
  }

  Widget _buildTextFieldWanita4a() {
    return TextField(
      controller: _ctrlWanita4a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria4a = int.parse(_ctrlPria4a.text);
        wanita4a = int.parse(_ctrlWanita4a.text);
        total4a = (pria4a + wanita4a) * intal4a;
        _ctrlTotal4a.text = "$total4a";
      },
    );
  }

  Widget _buildTextFieldTotal4a() {
    return TextField(
      controller: _ctrlTotal4a,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria4b() {
    return TextField(
      controller: _ctrlPria4b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria4b = int.parse(_ctrlPria4b.text);
        wanita4b = int.parse(_ctrlWanita4b.text);
        if (wanita4b == null || wanita4b == 0) {
          wanita4b = 0;
        }
        total4b = (pria4b + wanita4b) * intal4b;
        _ctrlTotal4b.text = "$total4b";
      },
    );
  }

  Widget _buildTextFieldWanita4b() {
    return TextField(
      controller: _ctrlWanita4b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria4b = int.parse(_ctrlPria4b.text);
        wanita4b = int.parse(_ctrlWanita4b.text);
        total4b = (pria4b + wanita4b) * intal4b;
        _ctrlTotal4b.text = "$total4b";
      },
    );
  }

  Widget _buildTextFieldTotal4b() {
    return TextField(
      controller: _ctrlTotal4b,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria4c() {
    return TextField(
      controller: _ctrlPria4c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria4c = int.parse(_ctrlPria4c.text);
        wanita4c = int.parse(_ctrlWanita4c.text);
        if (wanita4c == null || wanita4c == 0) {
          wanita4c = 0;
        }
        total4c = (pria4c + wanita4c) * intal4c;
        _ctrlTotal4c.text = "$total4c";
      },
    );
  }

  Widget _buildTextFieldWanita4c() {
    return TextField(
      controller: _ctrlWanita4c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria4c = int.parse(_ctrlPria4c.text);
        wanita4c = int.parse(_ctrlWanita4c.text);
        total4c = (pria4c + wanita4c) * intal4c;
        _ctrlTotal4c.text = "$total4c";
      },
    );
  }

  Widget _buildTextFieldTotal4c() {
    return TextField(
      controller: _ctrlTotal4c,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria4d() {
    return TextField(
      controller: _ctrlPria4d,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria4d = int.parse(_ctrlPria4d.text);
        wanita4d = int.parse(_ctrlWanita4d.text);
        if (wanita4d == null || wanita4d == 0) {
          wanita4d = 0;
        }
        total4d = (pria4d + wanita4d) * intal4d;
        _ctrlTotal4d.text = "$total4d";
      },
    );
  }

  Widget _buildTextFieldWanita4d() {
    return TextField(
      controller: _ctrlWanita4d,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria4d = int.parse(_ctrlPria4d.text);
        wanita4d = int.parse(_ctrlWanita4d.text);
        total4d = (pria4d + wanita4d) * intal4d;
        _ctrlTotal4d.text = "$total4d";
      },
    );
  }

  Widget _buildTextFieldTotal4d() {
    return TextField(
      controller: _ctrlTotal4d,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }
  //############################################################

}
