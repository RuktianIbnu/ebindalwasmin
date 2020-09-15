import 'package:eBindalwasmin/Screens/Beranda/home.dart';
import 'package:eBindalwasmin/Screens/Report/laporan.dart';
import 'package:flutter/material.dart';
import 'package:eBindalwasmin/Screens/Entrydata/entrydata.dart';

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
              ListTile(
                title: Text(
                  'Entry Data',
                  textAlign: TextAlign.center,
                ),
                // leading: CircleAvatar(
                //   child: Icon(Icons.add),
                // ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return EntryData();
                    },
                  ));
                },
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
