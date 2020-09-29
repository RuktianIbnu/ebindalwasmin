import 'package:eBindalwasmin/Screens/Beranda/home3.dart';
import 'package:eBindalwasmin/Screens/Report/laporan.dart';
import 'package:flutter/material.dart';
import 'package:eBindalwasmin/Screens/Entrydata/components/paspor.dart';
import 'package:eBindalwasmin/Screens/Entrydata/components/visa.dart';
import 'package:eBindalwasmin/Screens/Entrydata/components/intal.dart';
import 'package:eBindalwasmin/Screens/Entrydata/components/pnbp.dart';

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
                    ListTile(
                      title: Text(
                        'Dokumen Perjalanan Republik Indonesia',
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
                    ListTile(
                      title: Text('Visa', textAlign: TextAlign.right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return EntryVisa();
                            },
                          ),
                        );
                      },
                    ),
                    Divider(),
                    ListTile(
                      title:
                          Text('Izin Keimigrasian', textAlign: TextAlign.right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return EntryIntal();
                            },
                          ),
                        );
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text('PNBP Lainnya', textAlign: TextAlign.right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return EntryPnbp();
                            },
                          ),
                        );
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
