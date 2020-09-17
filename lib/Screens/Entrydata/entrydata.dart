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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              ExpansionTile(
                title: Text(
                  'A. DOKUMEN PERJALANAN REPUBLIK INDONESIA',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      '1. Paspor Biasa 48 Halaman',
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
