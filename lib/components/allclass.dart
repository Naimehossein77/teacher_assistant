import 'dart:async';
import 'dart:io';

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:sample/SamsungGalaxyS105.dart';
import 'package:sample/components/dashboard.dart';
import 'package:sample/components/main_drawer.dart';
import 'package:sample/components/test.dart';
import 'package:sample/main.dart';
import 'package:validators/validators.dart';
import 'login.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'test.dart';
import 'package:uuid/uuid.dart';

// ALLCLASS WIDGET
class allclass extends StatefulWidget {
  bool this_is_first_login = false;
  allclass({Key key, this.this_is_first_login}) : super(key: key);
  @override
  _allclassState createState() => _allclassState();
}

// WIDGET STATE
class _allclassState extends State<allclass> {
  final _formkey = GlobalKey<FormState>();
  final dept = TextEditingController();
  final series = TextEditingController();
  final section = TextEditingController();
  final subject = TextEditingController();
  final src = TextEditingController();
  Function validator;
  GlobalKey<RefreshIndicatorState> refreshKey;
  bool search = false;
  static List boxlist = [
        listitem(
          dept: '',
          series: '',
          section: '',
          subject: '',
          uuid: '',
        ),
      ],
      result = [];
  static int cnt = 0;
  String mdept = '', mseries = '', msection = '', msubject = '';
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  void initState() {
    print('initState of allclass');
    refreshKey = GlobalKey<RefreshIndicatorState>();
    if (boxlist.length == 1) {
      fetchDatabaseList();
    }
    super.initState();
  }

  fetchDatabaseList() async {
    print('fetchdata is called in allclass');
    dynamic resultant = await Model().GetallList();
    if (resultant == null)
      print('unable to retrieve');
    else {
      print('data fetched from allclass');
      setState(() {
        result = boxlist = resultant;
      });
    }
  }

  void filter(String value) {
    value = value.toUpperCase();
    setState(() {
      if (value.isEmpty)
        boxlist = result;
      else
        boxlist = result.where((i) => i.dept == value).toList();
    });
  }

  Future<Null> refreshList() async {
    await Future.delayed(Duration(seconds: 1));
    print('refreshlist is turned on');
    fetchDatabaseList();
  }

  // BUILDCONTEXT STARTS
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    User user = FirebaseAuth.instance.currentUser;
    FocusScopeNode currentFocus = FocusScope.of(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: mheight * .10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(0))),
        elevation: 0,
        title: search
            ? TextField(
                controller: src,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  fillColor: Colors.grey[100],
                  filled: true,
                ),
                autofocus: true,
                onChanged: (value) {
                  filter(value);
                },
              )
            : Text('All classes'),
        actions: [
          search
              ? IconButton(
                  icon: Icon(
                    Icons.cancel,
                    color: Colors.white,
                  ),
                  iconSize: 20,
                  onPressed: () {
                    setState(() {
                      search = !search;
                      boxlist = result;
                      src.text = '';
                    });
                  },
                )
              : IconButton(
                  icon: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.white,
                  ),
                  iconSize: 16,
                  onPressed: () {
                    setState(() {
                      search = !search;
                    });
                  },
                )
        ],
      ),
      drawer: MainDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            dept.text = '';
            series.text = '';
            section.text = '';
            subject.text = '';
          });
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Form(
                    key: _formkey,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: mheight * .50,
                        width: mwidth * .90,
                        child: ListView(
                          children: [
                            Container(
                              height: mheight * .10,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  controller: dept,
                                  decoration: InputDecoration(
                                    hintText: "ex: CSE/EEE/ME",
                                    labelText: 'Enter Dept.',
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                  ),
                                  validator: (String value) {
                                    if (value.isEmpty) return 'Enter Dept';
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Container(
                              height: mheight * .10,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  controller: series,
                                  decoration: InputDecoration(
                                    hintText: "ex: 18/19/20",
                                    labelText: 'Enter Series',
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                  ),
                                  validator: (String value) {
                                    if (value.isEmpty) return 'Enter Series';
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ),
                            Container(
                              height: mheight * .10,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  controller: section,
                                  decoration: InputDecoration(
                                    hintText: "ex: A/B/C",
                                    labelText: 'Enter Section',
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                  ),
                                  validator: (String value) {
                                    if (value.isEmpty) return 'Enter Section';
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Container(
                              height: mheight * .10,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  controller: subject,
                                  decoration: InputDecoration(
                                    hintText: "ex: C programming",
                                    labelText: 'Enter Subject',
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                  ),
                                  validator: (String value) {
                                    if (value.isEmpty) return 'Enter Subject';
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Container(
                              height: mheight * .10,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: RaisedButton(
                                  onPressed: () {
                                    if (_formkey.currentState.validate()) {
                                      Navigator.pop(context);

                                      String uuid = Uuid().v1().substring(0, 7);
                                      dept.text = dept.text.toUpperCase();
                                      section.text = section.text.toUpperCase();
                                      subject.text = subject.text.toTitleCase();
                                      // bool ok =  Model()
                                      //     .class_already_exists(dept.text +
                                      //         series.text +
                                      //         section.text +
                                      //         subject.text);

                                      // print(ok);
                                      if (!true)
                                        print('classroom already exists');
                                      else {
                                        setState(() {
                                          Model().add_classroom_to_classes(
                                              dept.text,
                                              series.text,
                                              section.text,
                                              subject.text,
                                              uuid);
                                          Model().add_class_to_id(uuid);

                                          boxlist.add(listitem(
                                            dept: dept.text,
                                            series: series.text,
                                            section: section.text,
                                            subject: subject.text,
                                            uuid: uuid,
                                          ));
                                        });
                                      }
                                      dept.text = '';
                                      series.text = '';
                                      section.text = '';
                                      subject.text = '';
                                    }
                                  },
                                  child: Text(
                                    'Create ClassRoom',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  color: Colors.green[700],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
          setState(() {
            // boxlist.add(BoxList(string: dept.text));
          });
          print('$cnt');
        },
        child: Icon(Icons.add),
      ),
//BODY PART=====================================================================================================================
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          await refreshList();
        },
        child: Container(
          color: HexColor('#610A93'),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white),
            child: Container(
              child: ListView.builder(
                itemCount: boxlist.length,
                shrinkWrap: true,
                // ignore: missing_return
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: Key(boxlist.length.toString()),
                    onDismissed: (direction) {
                      // Remove the item from the data source.
                      setState(() {
                        boxlist.removeAt(index);
                        cnt--;
                      });
                    },
                    child: Column(
                      children: [
                        BoxList(
                          dept: boxlist[index].dept,
                          series: boxlist[index].series,
                          section: boxlist[index].section,
                          subject: boxlist[index].subject,
                        ),
                        SizedBox(
                          height: 0,
                        )
                      ],
                    ), //your child here (maybe listivew)
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// BOXLIST WIDGET
//=========================================================================================================
class BoxList extends StatefulWidget {
  final String dept, series, section, string, subject;
  BoxList(
      {Key key,
      this.string,
      this.dept,
      this.series,
      this.section,
      this.subject})
      : super(key: key);

  @override
  BoxListState createState() => BoxListState();
}

class BoxListState extends State<BoxList> {
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onLongPress: () {
            print('long pressed');
          },
          onTap: () {
            Navigator.of(context).push(PageTransition(
                type: PageTransitionType.rightToLeft,
                child: dashboard(
                  appBarTitle: widget.dept +
                      '\'' +
                      widget.series +
                      widget.section +
                      ' ' +
                      widget.subject,
                  section: widget.section,
                )));
          },
          child: Card(
            child: Container(
                width: mwidth * .80,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child:
                                        Icon(FontAwesomeIcons.angleDoubleRight),
                                  ),
                                  Text(
                                    'Dept     :  ',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    widget.dept,
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Series  :  ',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.series,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Section:  ',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.section,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Subject:  ',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.subject,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white30,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                  // border: Border.all(color: Colors.black, width: 1)
                )),
          ),
        ),
      ),
    );
  }
}

class sample extends StatefulWidget {
  sample({Key key}) : super(key: key);

  @override
  _sampleState createState() => _sampleState();
}

class _sampleState extends State<sample> {
  @override
  Widget build(BuildContext context) {
    print('this is sample');
    return Container();
  }
}
