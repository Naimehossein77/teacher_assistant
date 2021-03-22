import 'dart:async';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sample/components/dashboard.dart';
import 'package:sample/components/main_drawer.dart';
import 'package:sample/components/test.dart';
import 'package:sample/main.dart';
import 'package:validators/validators.dart';
import 'login.dart';
import 'package:shimmer/shimmer.dart';
import 'package:validators/validators.dart';

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
  final src = TextEditingController();
  final course_code = TextEditingController();
  final course = TextEditingController();
  final first_roll = TextEditingController();
  Function validator;
  GlobalKey<RefreshIndicatorState> refreshKey;
  bool search = false;
  static List boxlist = [
        listitem(
          dept: '',
          series: '',
          section: '',
          course: '',
          course_code: '',
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
            course.text = '';
            course_code.text = '';
            first_roll.text = '';
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
                        height: mheight * .90,
                        width: mwidth * .95,
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
                                  controller: course,
                                  decoration: InputDecoration(
                                    hintText: "ex: CSE/HUM/EEE",
                                    labelText: 'Enter Course',
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
                                child: TextFormField(
                                  controller: course_code,
                                  decoration: InputDecoration(
                                    hintText: "ex: 2201/2113",
                                    labelText: 'Enter Course Code',
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                  ),
                                  keyboardType: TextInputType.number,
                                  validator: (String value) {
                                    if (value.isEmpty)
                                      return 'Enter Course Code';
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
                                  controller: first_roll,
                                  decoration: InputDecoration(
                                    hintText: "ex: 1803121/1803001/1803061",
                                    labelText: 'Enter Fist Roll',
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                  ),
                                  keyboardType: TextInputType.number,
                                  validator: (String value) {
                                    if (value.isEmpty)
                                      return 'Enter Course Code';
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ButtonTheme(
                                height: mheight * .08,
                                child: RaisedButton(
                                  onPressed: () {
                                    if (_formkey.currentState.validate()) {
                                      Navigator.pop(context);

                                      String uuid = Uuid().v1().substring(0, 7);
                                      dept.text = dept.text.toUpperCase();
                                      section.text = section.text.toUpperCase();
                                      course.text = course.text.toUpperCase();

                                      if (!true)
                                        print('classroom already exists');
                                      else {
                                        setState(() {
                                          Model().add_classroom_to_classes(
                                              dept.text,
                                              series.text,
                                              section.text,
                                              course.text,
                                              course_code.text,
                                              uuid,
                                              int.parse(first_roll.text));
                                          Model().add_class_to_id(uuid);
                                          if (boxlist[0].dept == '')
                                            boxlist.clear();
                                          boxlist.add(listitem(
                                            dept: dept.text,
                                            series: series.text,
                                            section: section.text,
                                            course: course.text,
                                            course_code: course_code.text,
                                            first_roll: first_roll.text,
                                            uuid: uuid,
                                          ));
                                        });
                                      }
                                      dept.text = '';
                                      series.text = '';
                                      section.text = '';
                                      course_code.text = '';
                                      course.text = '';
                                      first_roll.text = '';
                                    }
                                  },
                                  child: Text(
                                    'Create ClassRoom',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  color: Theme.of(context).accentColor,
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
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38)),
                color: Colors.white),
            child: Container(
              child: GridView.builder(
                itemCount: boxlist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 5,
                    childAspectRatio: .8),
                shrinkWrap: true,
                // ignore: missing_return
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      BoxList(
                        dept: boxlist[index].dept,
                        series: boxlist[index].series,
                        section: boxlist[index].section,
                        course: boxlist[index].course,
                        course_code: boxlist[index].course_code,
                        uuid: boxlist[index].uuid,
                        first_roll: boxlist[index].first_roll,
                      ),
                      SizedBox(
                        height: 0,
                      )
                    ],
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
  final String dept,
      series,
      section,
      string,
      course,
      course_code,
      uuid,
      first_roll;
  BoxList(
      {Key key,
      this.string,
      this.dept,
      this.series,
      this.section,
      this.course,
      this.course_code,
      this.uuid,
      this.first_roll})
      : super(key: key);

  @override
  BoxListState createState() => BoxListState();
}

class BoxListState extends State<BoxList> {
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Bounce(
      duration: Duration(milliseconds: 80),
      onPressed: () {
        Navigator.of(context).push(PageTransition(
            type: PageTransitionType.rightToLeft,
            alignment: Alignment.center,
            duration: Duration(milliseconds: 500),
            child: dashboard(
              appBarTitle: widget.dept +
                  '\'' +
                  widget.series +
                  widget.section +
                  ' ' +
                  widget.course +
                  '-' +
                  widget.course_code,
              section: widget.section,
              uuid: widget.uuid,
              first_roll: widget.first_roll,
            )));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            width: mwidth * .36,
            height: mheight * .25,
            child: Column(
              children: [
                Container(
                  height: mheight * .05,
                  decoration: BoxDecoration(
                      color: HexColor('#B890CE'),
                      borderRadius: (BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(''),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: mwidth * .10),
                          child: Text(
                            widget.dept,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: HexColor('#610A93')),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mheight * .03,
                ),
                Center(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Series: ',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: HexColor('#635F65')),
                            ),
                            Text(
                              widget.series,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: HexColor('#610A93'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mheight * .01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Section: ',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: HexColor('#635F65')),
                            ),
                            Text(
                              widget.section,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: HexColor('#610A93'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mheight * .01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Course: ',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: HexColor('#635F65')),
                            ),
                            Text(
                              widget.course,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: HexColor('#610A93'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mheight * .01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Code: ',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: HexColor('#635F65')),
                            ),
                            Text(
                              widget.course_code,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: HexColor('#610A93'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.12),
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: Offset(0, 1),
                ),
              ],
              // border: Border.all(color: Colors.black, width: 1)
            )),
      ),
    );
  }
}
