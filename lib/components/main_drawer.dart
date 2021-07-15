import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sample/components/allclass.dart';
import 'package:sample/components/auth.dart';
import 'package:sample/components/dashboard.dart';
import 'package:sample/components/login.dart';
import 'package:sample/components/test.dart';
import 'package:sample/main.dart';
import 'package:validators/validators.dart';

class MainDrawer extends StatefulWidget {
  bool this_is_first_login = false;
  MainDrawer({Key key, this.this_is_first_login}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  static String displayName = '', lastName = '', dept = '';
  static List boxlist = [''];
  @override
  void initState() {
    print('main drawer initState');
    if (boxlist.length == 1) fetch();
    super.initState();
  }

  fetch() async {
    print('data fetched in main drawer');
    dynamic resultant = await Profile().getProfile();
    if (resultant == null)
      print('failed to retrieve profile');
    else
      setState(() {
        boxlist = resultant;
        displayName = boxlist[1].toString();
      });
  }

  @override
  Widget build(BuildContext context) {
    User user = FirebaseAuth.instance.currentUser;

    FirebaseAuth.instance.authStateChanges().listen((User userr) {
      if (userr == null)
        print('null printed bla bla');
      else
        ; // print(userr);
    });

    return Drawer(
      child: ListView(
        children: [
          new UserAccountsDrawerHeader(
            accountName: Text(displayName),
            accountEmail: Text(user.email),
            currentAccountPicture: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/editprofilepage');
              },
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: new BoxDecoration(color: HexColor("#610A93")),
          ),
          InkWell(
            child: ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/allclass', (Route<dynamic> route) => false);
              },
              title: Text('Classes'),
              leading: Icon(Icons.add_business),
            ),
          ),
          InkWell(
            child: ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/dashboard', (Route<dynamic> route) => false);
              },
              title: Text('Labs'),
              leading: Icon(Icons.article),
            ),
          ),
          InkWell(
            child: ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/dashboard', (Route<dynamic> route) => false);
              },
              title: Text('Statistics'),
              leading: Icon(Icons.article),
            ),
          ),
          Divider(),
          InkWell(
            child: ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/dashboard', (Route<dynamic> route) => false);
                },
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                )),
          ),
          InkWell(
            child: ListTile(
                onTap: () {
                  Auth().SignOut();
                  dept = '';
                  displayName = '';
                  lastName = '';
                  // boxlist = [''];
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/login', (Route<dynamic> route) => false);
                },
                title: Text('LogOut'),
                leading: Icon(
                  Icons.logout,
                )),
          ),
        ],
      ),
    );
  }
}
