import 'package:eBindalwasmin/Screens/Beranda/home.dart';
import 'package:eBindalwasmin/Screens/Entrydata/components/Itas.dart';
import 'package:eBindalwasmin/Screens/Entrydata/components/Itk.dart';
import 'package:eBindalwasmin/Screens/Report/laporan.dart';
import 'package:flutter/material.dart';
import 'package:eBindalwasmin/Screens/EntryData/components/Paspor.dart';
// import 'package:eBindalwasmin/Screens/EntryData/components/Itas.dart' as itas;
import 'package:eBindalwasmin/Screens/EntryData/components/Itap.dart';
// import 'package:eBindalwasmin/Screens/EntryData/components/Itk.dart' as itk;

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.asset(
                  "assets/images/xx.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              accountEmail: Text('199507252019011001'),
              accountName: Text('Ruktian Ibnu Wijonarko'),
            ),
          ),
          ListTile(
            title: Text('Beranda'),
            leading: CircleAvatar(
              child: Icon(Icons.home),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
          ),
          ExpansionTile(
            title: Text('Administrator'),
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ExpansionTile(
                      title: Text('VISA', textAlign: TextAlign.center),
                      children: <Widget>[
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Divider(),
                              ListTile(
                                title: Text('Visa Kunjungan',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return;
                                      },
                                    ),
                                  );
                                },
                              ),
                              Divider(),
                              ListTile(
                                title: Text('Visa Tinggal Terbatas',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return;
                                      },
                                    ),
                                  );
                                },
                              ),
                              Divider(),
                              ListTile(
                                title: Text(
                                    'Persetujuan Visa Direktur Jenderal Imigrasi',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return;
                                      },
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text('Izin Keimigrasian',
                          textAlign: TextAlign.center),
                      children: <Widget>[
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Divider(),
                              ListTile(
                                title: Text('Izin Kunjungan',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return EntryItk();
                                      },
                                    ),
                                  );
                                },
                              ),
                              Divider(),
                              ListTile(
                                title: Text('Izin Tinggal Terbatas',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return EntryItas();
                                      },
                                    ),
                                  );
                                },
                              ),
                              Divider(),
                              ListTile(
                                title: Text('Izin Tinggal Tetap',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return EntryItap();
                                      },
                                    ),
                                  );
                                },
                              ),
                              Divider(),
                              ListTile(
                                title: Text('Izin Masuk Kembali',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return;
                                      },
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text('PNBP KEIMIGRASIAN LAINNYA',
                          textAlign: TextAlign.center),
                      children: <Widget>[
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Divider(),
                              ListTile(
                                title: Text('Biaya Beban',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return;
                                      },
                                    ),
                                  );
                                },
                              ),
                              Divider(),
                              ListTile(
                                title: Text('Smart Card',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return;
                                      },
                                    ),
                                  );
                                },
                              ),
                              Divider(),
                              ListTile(
                                title: Text(
                                    'KPP APEC)/APEC Business Travel Card (ABTC)',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return;
                                      },
                                    ),
                                  );
                                },
                              ),
                              Divider(),
                              ListTile(
                                title: Text(
                                    '(Afidavit) Bagi Anak Berkewarganegaraan Ganda',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return;
                                      },
                                    ),
                                  );
                                },
                              ),
                              Divider(),
                              ListTile(
                                title: Text('Surat Keterangan Keimigrasian',
                                    textAlign: TextAlign.right),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return;
                                      },
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      title: Text(
                        'Dokumen Pperjalanan Republik Indonesia',
                        textAlign: TextAlign.right,
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return EntryPaspor();
                          },
                        ));
                      },
                    ),
                  ],
                ),
              ),
            ],
            leading: CircleAvatar(
              child: Icon(Icons.assignment),
            ),
          ),
          ListTile(
            title: Text('Report'),
            leading: CircleAvatar(
              child: Icon(Icons.report),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Laporan();
                },
              ));
            },
          ),
          Divider(),
          // Positioned(
          //   bottom: 50,
          //   child: ListTile(
          //     title: Text('Log Out'),
          //     leading: CircleAvatar(
          //       child: Icon(Icons.exit_to_app),
          //     ),
          //   ),
          // ),
          ListTile(
            title: Text('Log Out'),
            leading: CircleAvatar(
              child: Icon(Icons.exit_to_app),
            ),
          ),
        ],
      ),
    );
  }
}
