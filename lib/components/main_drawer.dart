import 'package:flutter/material.dart';
import 'package:sample/components/allclass.dart';
import 'package:sample/components/dashboard.dart';
import 'package:sample/main.dart';

class MainDrawer extends StatefulWidget {
  MainDrawer({Key key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          new UserAccountsDrawerHeader(
            accountName: Text('Juvair Nayeem'),
            accountEmail: Text('naimehossein77@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: new BoxDecoration(color: Colors.pink),
          ),
          InkWell(
            child: ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => allclass()));
              },
              title: Text('Classes'),
              leading: Icon(Icons.add_business),
            ),
          ),
          InkWell(
            child: ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => dashboard()));
              },
              title: Text('DashBoard'),
              leading: Icon(Icons.article),
            ),
          ),
          Divider(),
          InkWell(
            child: ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => dashboard()));
                },
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                )),
          ),
        ],
      ),
    );
  }
}
