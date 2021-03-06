import 'package:flutter/material.dart';
import 'package:sample/components/allclass.dart';

import 'main_drawer.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text("DashBoard"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Present',
                  ),
                  Tab(
                    text: 'CT',
                  ),
                  Tab(
                    text: 'Lab',
                  ),
                  Tab(
                    text: 'Statistics',
                  ),
                ],
              ),
            ),
            drawer: MainDrawer(),
            body: TabBarView(
              children: [
                Center(
                    child: Text(
                  'My name is naim',
                  style: TextStyle(fontSize: 20.0),
                )),
                Center(
                    child: Text('What is your name?',
                        style: TextStyle(fontSize: 20.0))),
                Center(
                    child: Text(
                  'My name is naim',
                  style: TextStyle(fontSize: 20.0),
                )),
                Center(
                    child: Text('What is your name?',
                        style: TextStyle(fontSize: 20.0))),
              ],
            ),
          ),
        ));
  }
}
