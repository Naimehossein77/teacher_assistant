import 'dart:async';

import 'dart:developer';
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
import 'package:sample/components/qrcodescanner.dart';
import 'package:sample/components/shimmerEffect.dart';
import 'package:sample/components/test.dart';
import 'test.dart';
import 'package:uuid/uuid.dart';

// ALLCLASS WIDGET

class allclass extends StatefulWidget {
  allclass({
    Key key,
  }) : super(key: key);
  @override
  _allclassState createState() => _allclassState();
}

// WIDGET STATE
class _allclassState extends State<allclass> {
  final _formkey = GlobalKey<FormState>();
  final _classRoomCodeKey = GlobalKey<FormState>();
  final dept = TextEditingController();
  final series = TextEditingController();
  final section = TextEditingController();
  final src = TextEditingController();
  final course_code = TextEditingController();
  final course = TextEditingController();
  final first_roll = TextEditingController();
  final classRoom_code = TextEditingController();
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
  bool isShimmer = true;

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  void updateQRCode(String qrCode) {
    Model().add_class_to_id(qrCode);
    setState(() {
      classRoom_code.text = qrCode;
    });
    print('qr code added to id ' + qrCode);
    successAlert(context, 'ClassRoom Added Successfully');
    //refreshList();
  }

  @override
  void initState() {
    print('initState of allclass');
    refreshKey = GlobalKey<RefreshIndicatorState>();
    if (boxlist.length == 1) {
      fetchDatabaseList();
    }
    FirebaseAuth.instance.currentUser.reload();
    super.initState();
  }

  fetchDatabaseList() async {
    print('fetchdata is called in allclass');
    print(FirebaseAuth.instance.currentUser.uid + ' in all class');
    dynamic resultant =
        await Model().GetallList(FirebaseAuth.instance.currentUser.uid);
    if (resultant == null) {
      print('unable to retrieve');
      setState(() {
        isShimmer = false;
      });
    } else {
      print('data fetched from allclass');
      setState(() {
        result = boxlist = resultant;
        isShimmer = false;
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
    setState(() {
      isShimmer = true;
    });
    await Future.delayed(Duration(seconds: 1));
    print('refreshlist is turned on');
    fetchDatabaseList();
  }

  // BUILDCONTEXT STARTS
  @override
  Widget build(BuildContext context) {
    check(context);
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
            classRoom_code.text = '';
          });
          showGeneralDialog(
              context: context,
              transitionDuration: Duration(milliseconds: 400),
              pageBuilder: (context, anim3, anim7) {
                return Dialog(
                  insetAnimationDuration: Duration(milliseconds: 300),
                  insetAnimationCurve: Curves.ease,
                  insetPadding: EdgeInsets.all(0),
                  child: Form(
                    key: _formkey,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: mheight * 1,
                        width: mwidth * .95,
                        child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.warning,
                                    color: HexColor('#F7B217'),
                                  ),
                                  Text(
                                    'Warning',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'If you have a class code then Enter the code and connect your classroom with your partner teacher!'),
                            ),
                            Container(
                              height: mheight * .10,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  controller: classRoom_code,
                                  decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    hintText: "ex: abcde7gh",
                                    labelText: 'Classroom Code.',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[50],
                                  ),
                                  // validator: (String value) {
                                  //   if (value.isEmpty || value.length != 7)
                                  //     return 'Enter Correct Classroom Code';
                                  //   return null;
                                  // },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  mwidth * .10, 5, mwidth * .10, 10),
                              child: Container(
                                width: 80.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      HexColor('#631C8C'),
                                      HexColor('#8046A1')
                                    ],
                                  ),
                                ),
                                child: RawMaterialButton(
                                    // splashColor: Colors.black12,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    onPressed: () async {
                                      if (classRoom_code.text.length == 7) {
                                        setState(() {
                                          Model().add_class_to_id(
                                              classRoom_code.text);
                                          successAlert(context,
                                              'ClassRoom Added Successfully');
                                        });
                                        refreshList();

                                        dept.text = '';
                                        series.text = '';
                                        section.text = '';
                                        course_code.text = '';
                                        course.text = '';
                                        first_roll.text = '';
                                        Navigator.pop(context);
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Wrap(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(1),
                                          child: Icon(
                                            FontAwesomeIcons.plusSquare,
                                            color: Colors.white,
                                            // size: 21,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 2, 18, 2),
                                          child: Text("Create ClassRoom",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                      ]),
                                    )),
                              ),
                            ),
                            //   child: ButtonTheme(
                            //     shape: RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(20)),
                            //     height: mheight * .06,
                            //     child: RaisedButton(
                            //       onPressed: () {
                            //         if (classRoom_code.text.length == 7 && _classRoomCodeKey.currentState.validate()) {
                            //           setState(() {
                            //             Model().add_class_to_id(
                            //                 classRoom_code.text);
                            //           });
                            //           refreshList();

                            //           dept.text = '';
                            //           series.text = '';
                            //           section.text = '';
                            //           course_code.text = '';
                            //           course.text = '';
                            //           first_roll.text = '';
                            //           Navigator.pop(context);
                            //         }
                            //       },
                            //       child: Text(
                            //         'Join ClassRoom',
                            //         style: TextStyle(
                            //             color: Colors.white, fontSize: 16),
                            //       ),

                            //       color: HexColor('#F44236'),
                            //     ),
                            //   ),
                            // ),
                            // RaisedButton(
                            //   onPressed: () {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) => QRViewExample(
                            //                   onSonChanged: updateQRCode,
                            //                 )));
                            //   },
                            //   child: Text('Scan QR Code'),
                            // ),
                            Container(
                                width: 60.0,
                                height: 40.0,
                                padding: EdgeInsets.symmetric(
                                    horizontal: mwidth * .10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: OutlinedButton.icon(
                                    icon: Icon(Icons.qr_code_scanner),
                                    label: Text('Scan ClassRoom Code'),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  QRViewExample(
                                                    onSonChanged: updateQRCode,
                                                  )));
                                    })),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Center(
                                  child: Text(
                                'Or',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600]),
                              )),
                            ),
                            Container(
                              height: mheight * .10,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  controller: dept,
                                  decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    hintText: "ex: CSE/EEE/ME",
                                    labelText: 'Enter Dept.',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
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
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    hintText: "ex: 18/19/20",
                                    labelText: 'Enter Series',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    hintText: "ex: A/B/C",
                                    labelText: 'Enter Section',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    hintText: "ex: CSE/HUM/EEE",
                                    labelText: 'Enter Course',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    hintText: "ex: 2201/2113",
                                    labelText: 'Enter Course Code',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 5.0),
                                    hintText: "ex: 1803121/1803001/1803061",
                                    labelText: 'Enter Fist Roll',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                  ),
                                  keyboardType: TextInputType.number,
                                  validator: (String value) {
                                    if (value.length != 7)
                                      return 'Roll must have 7 length';
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),

                              child: Container(
                                width: 80.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Colors.green,
                                      HexColor('#55d66b')
                                    ],
                                  ),
                                ),
                                child: RawMaterialButton(
                                    // splashColor: Colors.black12,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    onPressed: () async {
                                      classRoom_code.text = '';
                                      if (_formkey.currentState.validate()) {
                                        // Navigator.pop(context);
                                        Navigator.pop(context);
                                        String uuid =
                                            Uuid().v1().substring(0, 7);
                                        dept.text = dept.text.toUpperCase();
                                        section.text =
                                            section.text.toUpperCase();
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
                                            successAlert(context,
                                                'ClassRoom Created Successfully');
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
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Wrap(children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              55, 2, 40, 2),
                                          child: Text("Create ClassRoom",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 21,
                                          ),
                                        )
                                      ]),
                                    )),
                              ),

                              // child: ButtonTheme(
                              //   height: mheight * .06,
                              //   child: RaisedButton(
                              //     onPressed: () {
                              //       classRoom_code.text = '';
                              //       if (_formkey.currentState.validate()) {
                              //         // Navigator.pop(context);
                              //         Navigator.pop(context);
                              //         String uuid = Uuid().v1().substring(0, 7);
                              //         dept.text = dept.text.toUpperCase();
                              //         section.text = section.text.toUpperCase();
                              //         course.text = course.text.toUpperCase();

                              //         if (!true)
                              //           print('classroom already exists');
                              //         else {
                              //           setState(() {
                              //             Model().add_classroom_to_classes(
                              //                 dept.text,
                              //                 series.text,
                              //                 section.text,
                              //                 course.text,
                              //                 course_code.text,
                              //                 uuid,
                              //                 int.parse(first_roll.text));
                              //             Model().add_class_to_id(uuid);
                              //             if (boxlist[0].dept == '')
                              //               boxlist.clear();
                              //             boxlist.add(listitem(
                              //               dept: dept.text,
                              //               series: series.text,
                              //               section: section.text,
                              //               course: course.text,
                              //               course_code: course_code.text,
                              //               first_roll: first_roll.text,
                              //               uuid: uuid,
                              //             ));
                              //             successAlert(context,
                              //                 'ClassRoom Created Successfully');
                              //           });
                              //         }
                              //         dept.text = '';
                              //         series.text = '';
                              //         section.text = '';
                              //         course_code.text = '';
                              //         course.text = '';
                              //         first_roll.text = '';
                              //       }
                              //     },
                              //     child: Text(
                              //       'Create ClassRoom',
                              //       style: TextStyle(
                              //           color: Colors.white, fontSize: 16),
                              //     ),
                              //     color: HexColor('#5CB85C'),
                              //   ),
                              //   shape: RoundedRectangleBorder(
                              //       borderRadius: BorderRadius.circular(20)),
                              // ),
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
            child: isShimmer
                ? LoadingListPage()
                : Container(
                    height: mheight,
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

    void handleClick(String value) {
      switch (value) {
        case 'Delete':
          print('Delete');
          break;
        case 'Share classroom code':
          print('Share classroom code');
          break;
      }
    }

    return Bounce(
      duration: Duration(milliseconds: 80),
      onPressed: () {
        Navigator.of(context).push(PageTransition(
            type: PageTransitionType.rightToLeft,
            alignment: Alignment.center,
            duration: Duration(milliseconds: 300),
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
                      // IconButton(
                      //   icon: Icon(
                      //     Icons.more_vert,
                      //     color: Colors.white,
                      //   ),
                      //   onPressed: () {},
                      // ),
                      PopupMenuButton<String>(
                        onSelected: handleClick,
                        itemBuilder: (BuildContext context) {
                          return {
                            'Delete',
                            'Share classroom code',
                          }.map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
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
