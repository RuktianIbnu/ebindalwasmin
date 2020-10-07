import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:eBindalwasmin/Screens/Beranda/drawerpage.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';
import 'package:eBindalwasmin/Screens/Beranda/home3.dart';

class EntryPnbp extends StatefulWidget {
  const EntryPnbp({Key key}) : super(key: key);

  @override
  _EntryPnbpState createState() => new _EntryPnbpState();
}

class _EntryPnbpState extends State<EntryPnbp> {
  DateTime tanggal = DateTime.now();

// PNBP 1 ##################################################################################################
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

  final int intal1d = 100000;
  int pria1d;
  int wanita1d;
  int total1d;
  TextEditingController _ctrlPria1d = TextEditingController();
  TextEditingController _ctrlWanita1d = TextEditingController();
  TextEditingController _ctrlTotal1d = TextEditingController();

  final int intal1e = 100000;
  int pria1e;
  int wanita1e;
  int total1e;
  TextEditingController _ctrlPria1e = TextEditingController();
  TextEditingController _ctrlWanita1e = TextEditingController();
  TextEditingController _ctrlTotal1e = TextEditingController();

  final int intal1f = 100000;
  int pria1f;
  int wanita1f;
  int total1f;
  TextEditingController _ctrlPria1f = TextEditingController();
  TextEditingController _ctrlWanita1f = TextEditingController();
  TextEditingController _ctrlTotal1f = TextEditingController();

  final int intal1g = 100000;
  int pria1g;
  int wanita1g;
  int total1g;
  TextEditingController _ctrlPria1g = TextEditingController();
  TextEditingController _ctrlWanita1g = TextEditingController();
  TextEditingController _ctrlTotal1g = TextEditingController();
//####################################################################################################
// PNBP 2 ##################################################################################################
  final int intal2 = 100000;
  int pria2;
  int wanita2;
  int total2;
  TextEditingController _ctrlPria2 = TextEditingController();
  TextEditingController _ctrlWanita2 = TextEditingController();
  TextEditingController _ctrlTotal2 = TextEditingController();
//####################################################################################################
// PNBP 3 ##################################################################################################
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
//####################################################################################################
// PNBP 4 ##################################################################################################
  final int intal4 = 100000;
  int pria4;
  int wanita4;
  int total4;
  TextEditingController _ctrlPria4 = TextEditingController();
  TextEditingController _ctrlWanita4 = TextEditingController();
  TextEditingController _ctrlTotal4 = TextEditingController();
//####################################################################################################
// PNBP 5 ##################################################################################################
  final int intal5 = 100000;
  int pria5;
  int wanita5;
  int total5;
  TextEditingController _ctrlPria5 = TextEditingController();
  TextEditingController _ctrlWanita5 = TextEditingController();
  TextEditingController _ctrlTotal5 = TextEditingController();
//####################################################################################################

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

    Future<bool> onBackButton(context) async {
      // tampilkan dialog saat user menekan tombol back
      // jika ditekan ok maka akan kembali ke halaman sebelumnya
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Kembali Ke Beranda'),
            content: Text('Yakin kembali ke beranda?'),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  // tutup modal dan halaman ini
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
                },
                child: Text('Beranda'),
              ),
              FlatButton(
                onPressed: () {
                  // tutup modal saja
                  Navigator.of(context).pop(false);
                },
                child: Text('Tidak'),
              )
            ],
          );
        },
      );
    }

    return WillPopScope(
      onWillPop: () {
        return onBackButton(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("PNBP Keimigrasian Lainnya"),
          backgroundColor: Colors.purple,
        ),
        drawer: DrawerPage(),
        body: new Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding:
              new EdgeInsets.only(top: 20, left: 10, bottom: 20, right: 10),
          decoration: new BoxDecoration(
              color: Colors.blueGrey[200],
              border: Border.all(width: 1.0, color: Colors.blueGrey[200])),
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
                      '1. Biaya Beban',
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
                      'a. Orang Asing yang Berada di Wilayah Indonesia Melampaui Waktu Tidak lebih dari 60 (Enam Puluh) Hari dari Izin Keimigrasian yang Diberikan',
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
                      'b. Penanggung Jawab Alat Angkut yang Tidak Memenuhi Pasal 18 Ayat ( 1) Undang-Undang Nomor 6 Tahun 2011 tentang Keimigrasian',
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
                      'c. Penanggung Jawab Alat Angkut yang Mengangkut Penumpang yang Tidak Memiliki Dokumen Keimigrasian yang Sah dan Berlaku',
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
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'd. Biaya Beban Paspor Hilang',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Row(
                    children: <Widget>[
                      new Flexible(child: _buildTextFieldPria1d()),
                      new Flexible(child: _buildTextFieldWanita1d()),
                      new Flexible(child: _buildTextFieldTotal1d()),
                    ],
                  ),
                  new Container(
                    width: sizewidth,
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'e. Biaya Beban Paspor Rusak',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Row(
                    children: <Widget>[
                      new Flexible(child: _buildTextFieldPria1e()),
                      new Flexible(child: _buildTextFieldWanita1e()),
                      new Flexible(child: _buildTextFieldTotal1e()),
                    ],
                  ),
                  new Container(
                    width: sizewidth,
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'f. Biaya Beban Kartu Izin Tinggal Tetap Hilang',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Row(
                    children: <Widget>[
                      new Flexible(child: _buildTextFieldPria1f()),
                      new Flexible(child: _buildTextFieldWanita1f()),
                      new Flexible(child: _buildTextFieldTotal1f()),
                    ],
                  ),
                  new Container(
                    width: sizewidth,
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'g. Biaya Beban KPP APEC Hilang/Rusak',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Row(
                    children: <Widget>[
                      new Flexible(child: _buildTextFieldPria1g()),
                      new Flexible(child: _buildTextFieldWanita1g()),
                      new Flexible(child: _buildTextFieldTotal1g()),
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
                      '2. Smart Card',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Row(
                    children: <Widget>[
                      new Flexible(child: _buildTextFieldPria2()),
                      new Flexible(child: _buildTextFieldWanita2()),
                      new Flexible(child: _buildTextFieldTotal2()),
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
                      '3. Kartu Perjalanan Pebisnis Asia Pacific Economic Cooperation (KPP APEC)/APEC Business Travel Card (ABTC)',
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
                      'a. Permohonan Baru KPP APEC',
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
                      'b. Penggantian KPP APEC',
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
                    height: 40,
                    width: sizewidth,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      '4. Fasilitas Keimigrasian (Afidavit) Bagi Anak Berkewarganegaraan Ganda',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Flexible(child: _buildTextFieldPria4()),
                      new Flexible(child: _buildTextFieldWanita4()),
                      new Flexible(child: _buildTextFieldTotal4()),
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
                      '5. Surat Keterangan Keimigrasian',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Flexible(child: _buildTextFieldPria5()),
                      new Flexible(child: _buildTextFieldWanita5()),
                      new Flexible(child: _buildTextFieldTotal5()),
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

  Widget _buildTextFieldPria1d() {
    return TextField(
      controller: _ctrlPria1d,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria1d = int.parse(_ctrlPria1d.text);
        wanita1d = int.parse(_ctrlWanita1d.text);
        if (wanita1d == null || wanita1d == 0) {
          wanita1d = 0;
        }
        total1d = (pria1d + wanita1d) * intal1d;
        _ctrlTotal1d.text = "$total1d";
      },
    );
  }

  Widget _buildTextFieldWanita1d() {
    return TextField(
      controller: _ctrlWanita1d,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria1d = int.parse(_ctrlPria1d.text);
        wanita1d = int.parse(_ctrlWanita1d.text);
        total1d = (pria1d + wanita1d) * intal1d;
        _ctrlTotal1d.text = "$total1d";
      },
    );
  }

  Widget _buildTextFieldTotal1d() {
    return TextField(
      controller: _ctrlTotal1d,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria1e() {
    return TextField(
      controller: _ctrlPria1e,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria1e = int.parse(_ctrlPria1e.text);
        wanita1e = int.parse(_ctrlWanita1e.text);
        if (wanita1e == null || wanita1e == 0) {
          wanita1e = 0;
        }
        total1e = (pria1e + wanita1e) * intal1e;
        _ctrlTotal1e.text = "$total1e";
      },
    );
  }

  Widget _buildTextFieldWanita1e() {
    return TextField(
      controller: _ctrlWanita1e,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria1e = int.parse(_ctrlPria1e.text);
        wanita1e = int.parse(_ctrlWanita1e.text);
        total1e = (pria1e + wanita1e) * intal1e;
        _ctrlTotal1e.text = "$total1e";
      },
    );
  }

  Widget _buildTextFieldTotal1e() {
    return TextField(
      controller: _ctrlTotal1e,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria1f() {
    return TextField(
      controller: _ctrlPria1f,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria1f = int.parse(_ctrlPria1f.text);
        wanita1f = int.parse(_ctrlWanita1f.text);
        if (wanita1f == null || wanita1f == 0) {
          wanita1f = 0;
        }
        total1f = (pria1f + wanita1f) * intal1f;
        _ctrlTotal1f.text = "$total1f";
      },
    );
  }

  Widget _buildTextFieldWanita1f() {
    return TextField(
      controller: _ctrlWanita1f,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria1f = int.parse(_ctrlPria1f.text);
        wanita1f = int.parse(_ctrlWanita1f.text);
        total1f = (pria1f + wanita1f) * intal1f;
        _ctrlTotal1f.text = "$total1f";
      },
    );
  }

  Widget _buildTextFieldTotal1f() {
    return TextField(
      controller: _ctrlTotal1f,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

  Widget _buildTextFieldPria1g() {
    return TextField(
      controller: _ctrlPria1g,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria1g = int.parse(_ctrlPria1g.text);
        wanita1g = int.parse(_ctrlWanita1g.text);
        if (wanita1g == null || wanita1g == 0) {
          wanita1g = 0;
        }
        total1g = (pria1g + wanita1g) * intal1g;
        _ctrlTotal1g.text = "$total1g";
      },
    );
  }

  Widget _buildTextFieldWanita1g() {
    return TextField(
      controller: _ctrlWanita1g,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria1g = int.parse(_ctrlPria1g.text);
        wanita1g = int.parse(_ctrlWanita1g.text);
        total1g = (pria1g + wanita1g) * intal1g;
        _ctrlTotal1g.text = "$total1g";
      },
    );
  }

  Widget _buildTextFieldTotal1g() {
    return TextField(
      controller: _ctrlTotal1g,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }
  //############################################################

  // 2 #######################################################
  Widget _buildTextFieldPria2() {
    return TextField(
      controller: _ctrlPria2,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria2 = int.parse(_ctrlPria2.text);
        wanita2 = int.parse(_ctrlWanita2.text);
        if (wanita2 == null || wanita2 == 0) {
          wanita2 = 0;
        }
        total2 = (pria2 + wanita2) * intal2;
        _ctrlTotal2.text = "$total2";
      },
    );
  }

  Widget _buildTextFieldWanita2() {
    return TextField(
      controller: _ctrlWanita2,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria2 = int.parse(_ctrlPria2.text);
        wanita2 = int.parse(_ctrlWanita2.text);
        total2 = (pria2 + wanita2) * intal2;
        _ctrlTotal2.text = "$total2";
      },
    );
  }

  Widget _buildTextFieldTotal2() {
    return TextField(
      controller: _ctrlTotal2,
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
  //############################################################

  // 4 #######################################################
  Widget _buildTextFieldPria4() {
    return TextField(
      controller: _ctrlPria4,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria4 = int.parse(_ctrlPria4.text);
        wanita4 = int.parse(_ctrlWanita4.text);
        if (wanita4 == null || wanita4 == 0) {
          wanita4 = 0;
        }
        total4 = (pria4 + wanita4) * intal4;
        _ctrlTotal4.text = "$total4";
      },
    );
  }

  Widget _buildTextFieldWanita4() {
    return TextField(
      controller: _ctrlWanita4,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria4 = int.parse(_ctrlPria4.text);
        wanita4 = int.parse(_ctrlWanita4.text);
        total4 = (pria4 + wanita4) * intal4;
        _ctrlTotal4.text = "$total4";
      },
    );
  }

  Widget _buildTextFieldTotal4() {
    return TextField(
      controller: _ctrlTotal4,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }
  //############################################################

  // 5 #######################################################
  Widget _buildTextFieldPria5() {
    return TextField(
      controller: _ctrlPria5,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria5 = int.parse(_ctrlPria5.text);
        wanita5 = int.parse(_ctrlWanita5.text);
        if (wanita5 == null || wanita5 == 0) {
          wanita5 = 0;
        }
        total5 = (pria5 + wanita5) * intal5;
        _ctrlTotal5.text = "$total5";
      },
    );
  }

  Widget _buildTextFieldWanita5() {
    return TextField(
      controller: _ctrlWanita5,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria5 = int.parse(_ctrlPria5.text);
        wanita5 = int.parse(_ctrlWanita5.text);
        total5 = (pria5 + wanita5) * intal5;
        _ctrlTotal5.text = "$total5";
      },
    );
  }

  Widget _buildTextFieldTotal5() {
    return TextField(
      controller: _ctrlTotal5,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }
  //############################################################
}
