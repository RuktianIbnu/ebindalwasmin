import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eBindalwasmin/Screens/Beranda/drawerpage.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';

class EntryData extends StatefulWidget {
  const EntryData({Key key}) : super(key: key);

  @override
  _EntryDataState createState() => new _EntryDataState();
}

class _EntryDataState extends State<EntryData> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Entry Data"),
        backgroundColor: Colors.purple,
      ),
      drawer: DrawerPage(),
      body: new Container(
        padding: new EdgeInsets.only(
            left: 10.0, bottom: 8.0, right: 10.0, top: 10.0),
        decoration: new BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              Text(
                'A. Dokumen Perjalanan Republik Indonesia',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                '1. Paspor Biasa 48 Halaman',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Laki-Laki',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Perempuan',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: Text(
                      'Total',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                '2. Paspor Biasa 48 Halaman Elektronik',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Laki-Laki',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Perempuan',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: Text(
                      'Total',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                '3. Layanan Percepatan Paspor Pada Hari Yang Sama',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Laki-Laki',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Perempuan',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: Text(
                      'Total',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 40,
              ),
              Text(
                'B. Izin Keimigrasian',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                '1. Izin Kunjungan',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              Text(
                'a. Pemberian Izin Kunjungan Masa Berlaku 30 Har',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Laki-Laki',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Perempuan',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: Text(
                      'Total',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                'b. Perpanjangan Izin Kunjungan Masa Berlaku 30 Hari',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Laki-Laki',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Perempuan',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: Text(
                      'Total',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                'c.  Perpanjangan Izin Kunjungan Masa Berlaku 60 Hari',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Laki-Laki',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Perempuan',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: Text(
                      'Total',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                '2. Izin Tinggal Terbatas',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              Text(
                'a. Pemberian Izin Tinggal Terbatas Masa Berlaku 30 Har',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Laki-Laki',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Perempuan',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: Text(
                      'Total',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                'b. Perpanjangan Izin Tinggal Terbatas Masa Berlaku 30 Hari',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Laki-Laki',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Perempuan',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: Text(
                      'Total',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                'c.  Perpanjangan Izin Tinggal Terbatas Masa Berlaku 60 Hari',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Laki-Laki',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Perempuan',
                      ),
                    ),
                  ),
                  new Flexible(
                    child: Text(
                      'Total',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              Divider(),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '3. Izin Tinggal Tetap',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(),
                    Text(
                      'a. Pemberian Izin Tinggal Tetap Masa Berlaku 30 Har',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Flexible(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Laki-Laki',
                            ),
                          ),
                        ),
                        new Flexible(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Perempuan',
                            ),
                          ),
                        ),
                        new Flexible(
                          child: Text(
                            'Total',
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Text(
                      'b. Perpanjangan Izin Tinggal Tetap Masa Berlaku 30 Hari',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Flexible(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Laki-Laki',
                            ),
                          ),
                        ),
                        new Flexible(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Perempuan',
                            ),
                          ),
                        ),
                        new Flexible(
                          child: Text(
                            'Total',
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Text(
                      'c.  Perpanjangan Izin Tinggal Tetap Masa Berlaku 60 Hari',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Flexible(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Laki-Laki',
                            ),
                          ),
                        ),
                        new Flexible(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Perempuan',
                            ),
                          ),
                        ),
                        new Flexible(
                          child: Text(
                            'Total',
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              RoundedButton(
                text: "Simpan",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
