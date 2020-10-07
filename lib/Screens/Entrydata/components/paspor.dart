import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:eBindalwasmin/Screens/Beranda/drawerpage.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';
import 'package:eBindalwasmin/Screens/Beranda/home3.dart';

class EntryPaspor extends StatefulWidget {
  const EntryPaspor({Key key}) : super(key: key);

  @override
  _EntryPasporState createState() => new _EntryPasporState();
}

class _EntryPasporState extends State<EntryPaspor> {
  DateTime tanggal = DateTime.now();

  final int paspor1 = 350000;
  int pria1;
  int wanita1;
  int total1;
  TextEditingController _ctrlPria1 = TextEditingController();
  TextEditingController _ctrlWanita1 = TextEditingController();
  TextEditingController _ctrlTotal1 = TextEditingController();

  final int paspor2 = 600000;
  int pria2;
  int wanita2;
  int total2;
  TextEditingController _ctrlPria2 = TextEditingController();
  TextEditingController _ctrlWanita2 = TextEditingController();
  TextEditingController _ctrlTotal2 = TextEditingController();

  final int paspor3 = 600000;
  int pria3;
  int wanita3;
  int total3;
  TextEditingController _ctrlPria3 = TextEditingController();
  TextEditingController _ctrlWanita3 = TextEditingController();
  TextEditingController _ctrlTotal3 = TextEditingController();

  final int paspor4 = 600000;
  int pria4;
  int wanita4;
  int total4;
  TextEditingController _ctrlPria4 = TextEditingController();
  TextEditingController _ctrlWanita4 = TextEditingController();
  TextEditingController _ctrlTotal4 = TextEditingController();

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
          title: Text("Dokumen Perjalanan Republik Indonesia"),
          backgroundColor: Colors.purple,
        ),
        drawer: DrawerPage(),
        body: new Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding:
              new EdgeInsets.only(top: 20, left: 10, bottom: 20, right: 10),
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
                          controller: _ctrlPria1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Jumlah Pria',
                            // border: new OutlineInputBorder(
                            //   borderRadius: new BorderRadius.circular(20.0),
                            // ),
                          ),
                          onChanged: (value) {
                            pria1 = int.parse(_ctrlPria1.text);
                            wanita1 = int.parse(_ctrlWanita1.text);
                            if (wanita1 == null || wanita1 == 0) {
                              wanita1 = 0;
                            }
                            total1 = (pria1 + wanita1) * paspor1;
                            _ctrlTotal1.text = "$total1";
                          },
                        ),
                      ),
                      new Flexible(
                        child: TextField(
                          controller: _ctrlWanita1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Jumlah Wanita',
                          ),
                          onChanged: (value) {
                            pria1 = int.parse(_ctrlPria1.text);
                            wanita1 = int.parse(_ctrlWanita1.text);
                            total1 = (pria1 + wanita1) * paspor1;
                            _ctrlTotal1.text = "$total1";
                          },
                        ),
                      ),
                      new Flexible(
                        child: TextField(
                          controller: _ctrlTotal1,
                          decoration: InputDecoration(
                            labelText: 'Total',
                          ),
                          enabled: false,
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
                      '3. Surat Perjalanan Laksana Paspor untuk Orang Asing',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Row(
                    children: <Widget>[
                      new Flexible(child: _buildTextFieldPria3()),
                      new Flexible(child: _buildTextFieldWanita3()),
                      new Flexible(child: _buildTextFieldTotal3()),
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
                      '4. Layanan Percepatan Paspor Selesai Pada Hari yang Sama',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Row(
                    children: <Widget>[
                      new Flexible(child: _buildTextFieldPria4()),
                      new Flexible(child: _buildTextFieldWanita4()),
                      new Flexible(child: _buildTextFieldTotal4()),
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
        total2 = (pria2 + wanita2) * paspor2;
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
        total2 = (pria2 + wanita2) * paspor2;
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

  Widget _buildTextFieldPria3() {
    return TextField(
      controller: _ctrlPria3,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Pria',
      ),
      onChanged: (value) {
        pria3 = int.parse(_ctrlPria3.text);
        wanita3 = int.parse(_ctrlWanita3.text);
        if (wanita3 == null || wanita3 == 0) {
          wanita3 = 0;
        }
        total3 = (pria3 + wanita3) * paspor3;
        _ctrlTotal3.text = "$total3";
      },
    );
  }

  Widget _buildTextFieldWanita3() {
    return TextField(
      controller: _ctrlWanita3,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Jumlah Wanita',
      ),
      onChanged: (value) {
        pria3 = int.parse(_ctrlPria3.text);
        wanita3 = int.parse(_ctrlWanita3.text);
        total3 = (pria3 + wanita3) * paspor3;
        _ctrlTotal3.text = "$total3";
      },
    );
  }

  Widget _buildTextFieldTotal3() {
    return TextField(
      controller: _ctrlTotal3,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Total',
      ),
      enabled: false,
    );
  }

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
        total4 = (pria4 + wanita4) * paspor4;
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
        total4 = (pria4 + wanita4) * paspor4;
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
}
