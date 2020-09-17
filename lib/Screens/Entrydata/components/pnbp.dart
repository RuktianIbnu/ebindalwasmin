import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:eBindalwasmin/Screens/Beranda/drawerpage.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';

class EntryPnbp extends StatefulWidget {
  const EntryPnbp({Key key}) : super(key: key);

  @override
  _EntryPnbpState createState() => new _EntryPnbpState();
}

class _EntryPnbpState extends State<EntryPnbp> {
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
        title: Text("PNBP Keimigrasian Lainnya"),
        backgroundColor: Colors.purple,
      ),
      drawer: DrawerPage(),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: new EdgeInsets.only(top: 20, left: 10, bottom: 20, right: 10),
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
                    'c. Penanggung Jawab Alat Angkut yang Mengangkut Penumpang yang Tidak Memiliki Dokumen Keimigrasian yang Sah dan Berlaku',
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
                    'd. Biaya Beban Paspor Hilang',
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
                    'e. Biaya Beban Paspor Rusak',
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
                    'f. Biaya Beban Kartu Izin Tinggal Tetap Hilang',
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
                    'g. Biaya Beban KPP APEC Hilang/Rusak',
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
}
