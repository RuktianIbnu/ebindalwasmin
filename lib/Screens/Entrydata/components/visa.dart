// import 'package:eBindalwasmin/Screens/Login/components/background.dart';
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
  final int visa1a = 100000;
  int pria1a;
  int wanita1a;
  int total1a;
  TextEditingController _ctrlPria1a = TextEditingController();
  TextEditingController _ctrlWanita1a = TextEditingController();
  TextEditingController _ctrlTotal1a = TextEditingController();

  final int visa1b = 100000;
  int pria1b;
  int wanita1b;
  int total1b;
  TextEditingController _ctrlPria1b = TextEditingController();
  TextEditingController _ctrlWanita1b = TextEditingController();
  TextEditingController _ctrlTotal1b = TextEditingController();

  final int visa1c = 100000;
  int pria1c;
  int wanita1c;
  int total1c;
  TextEditingController _ctrlPria1c = TextEditingController();
  TextEditingController _ctrlWanita1c = TextEditingController();
  TextEditingController _ctrlTotal1c = TextEditingController();

  final int visa2a = 100000;
  int pria2a;
  int wanita2a;
  int total2a;
  TextEditingController _ctrlPria2a = TextEditingController();
  TextEditingController _ctrlWanita2a = TextEditingController();
  TextEditingController _ctrlTotal2a = TextEditingController();

  final int visa2b = 100000;
  int pria2b;
  int wanita2b;
  int total2b;
  TextEditingController _ctrlPria2b = TextEditingController();
  TextEditingController _ctrlWanita2b = TextEditingController();
  TextEditingController _ctrlTotal2b = TextEditingController();

  final int visa3 = 100000;
  int pria3;
  int wanita3;
  int total3;
  TextEditingController _ctrlPria3 = TextEditingController();
  TextEditingController _ctrlWanita3 = TextEditingController();
  TextEditingController _ctrlTotal3 = TextEditingController();

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
                    'c. Visa Kunjungan Saat Kedatangan',
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
                    new Flexible(child: _buildTextFieldPria2b()),
                    new Flexible(child: _buildTextFieldWanita2b()),
                    new Flexible(child: _buildTextFieldTotal2b()),
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
                    '3. Persetujuan Visa Direktur Jenderal Imigrasi',
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
        total1a = (pria1a + wanita1a) * visa1a;
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
        total1a = (pria1a + wanita1a) * visa1a;
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
        total1b = (pria1b + wanita1b) * visa1b;
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
        total1b = (pria1b + wanita1b) * visa1b;
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
        total1c = (pria1c + wanita1c) * visa1c;
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
        total1c = (pria1c + wanita1c) * visa1c;
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
        total2a = (pria2a + wanita2a) * visa2a;
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
        total2a = (pria2a + wanita2a) * visa2a;
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
        total2b = (pria2b + wanita2b) * visa2b;
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
        total2b = (pria2b + wanita2b) * visa2b;
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
        total3 = (pria3 + wanita3) * visa3;
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
        total3 = (pria3 + wanita3) * visa3;
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
}
