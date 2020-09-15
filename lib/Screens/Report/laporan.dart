import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:eBindalwasmin/Screens/Beranda/drawerpage.dart';
import 'package:eBindalwasmin/components/rounded_button.dart';

class Laporan extends StatefulWidget {
  @override
  _LaporanFormState createState() => _LaporanFormState();
}

class _LaporanFormState extends State<Laporan> {
  DateTime tanggalAwal = DateTime.now();
  DateTime tanggalAkhir = DateTime.now();
  final _formkey = GlobalKey<FormState>();

  String _valGender;
  String _valFriends;
  List _listGender = [
    "Kantor Imigrasi Kelas I TPI Pangkalpinang",
    "Kantor Imigrasi Kelas II TPI Tanjung Pandan"
  ];
  List _myFriends = [
    "DPRI", //Dokumen Perjalanan Republik Indonesia
    "Izin Keimigrasian",
    "PNBP Keimigrasian Lainnya"
  ];

  Future<Null> _selectDateAwal(BuildContext context) async {
    final DateTime _seldateAwal = await showDatePicker(
        context: context,
        initialDate: tanggalAwal,
        firstDate: DateTime(1990),
        lastDate: DateTime(2050),
        builder: (context, child) {
          return SingleChildScrollView(
            child: child,
          );
        });

    if (_seldateAwal != null) {
      setState(() {
        tanggalAwal = _seldateAwal;
      });
    }
  }

  Future<Null> _selectDateAkhir(BuildContext context) async {
    final DateTime _seldateAkhir = await showDatePicker(
        context: context,
        initialDate: tanggalAkhir,
        firstDate: DateTime(1990),
        lastDate: DateTime(2050),
        builder: (context, child) {
          return SingleChildScrollView(
            child: child,
          );
        });

    if (_seldateAkhir != null) {
      setState(() {
        tanggalAkhir = _seldateAkhir;
      });
    }
  }

  Widget build(BuildContext context) {
    String formatTanggalAwal = new DateFormat.yMMMd().format(tanggalAwal);
    String formatTanggalAkhir = new DateFormat.yMMMd().format(tanggalAkhir);
    return Scaffold(
      appBar: AppBar(
        title: Text("Laporan"),
        backgroundColor: Colors.purple,
      ),
      drawer: DrawerPage(),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),

            // height: 100,
            // width: 50,
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Periode: '),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('$formatTanggalAwal'),
                            IconButton(
                              onPressed: () {
                                _selectDateAwal(context);
                              },
                              icon: Icon(Icons.calendar_today),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('$formatTanggalAkhir'),
                            IconButton(
                              onPressed: () {
                                _selectDateAkhir(context);
                              },
                              icon: Icon(Icons.calendar_today),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: <Widget>[
                        Text('Jenis Layanan'),
                        DropdownButton(
                          hint: Text("Pilih Jenis Layanan"),
                          value: _valFriends,
                          items: _myFriends.map((value) {
                            return DropdownMenuItem(
                              child: Text(
                                value,
                              ),
                              value: value,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _valFriends = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('Pilih Satuan Kerja'),
                      DropdownButton(
                        hint: Text("Pilih Satuan Kerja"),
                        value: _valGender,
                        items: _listGender.map((value) {
                          return DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _valGender = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                RoundedButton(
                  text: "Cari",
                  press: () {},
                ),
                Divider(),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: <DataColumn>[
                        DataColumn(label: Text("Tanggal")),
                        DataColumn(label: Text("Satuan Kerja")),
                        DataColumn(label: Text("Jenis Layanan")),
                        DataColumn(label: Text("Pria")),
                        DataColumn(label: Text("Wanita")),
                        DataColumn(label: Text("Total Rupiah")),
                      ],
                      rows: <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text("Sep 2, 2020")),
                            DataCell(Text("Pangkal Pinang")),
                            DataCell(Text("DPRI")),
                            DataCell(Text("40")),
                            DataCell(Text("60")),
                            DataCell(Text("25000000")),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text("Sep 10, 2020")),
                            DataCell(Text("Pangkal Pinang")),
                            DataCell(Text("DPRI")),
                            DataCell(Text("43")),
                            DataCell(Text("60")),
                            DataCell(Text("28000000")),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text("Sep 12, 2020")),
                            DataCell(Text("Pangkal Pinang")),
                            DataCell(Text("DPRI")),
                            DataCell(Text("43")),
                            DataCell(Text("60")),
                            DataCell(Text("29000000")),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //table laporan
              ],
            ),
          ),
        ),
      ),
    );
  }
}
