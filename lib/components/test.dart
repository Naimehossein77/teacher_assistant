import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sample/components/allclass.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'dart:io';
import 'package:uuid/uuid.dart';

class listitem {
  String dept = '',
      section = '',
      series = '',
      course = '',
      course_code = '',
      search = '',
      uuid = '',
      first_roll = '';
  listitem(
      {this.dept,
      this.series,
      this.section,
      this.course,
      this.course_code,
      this.uuid,
      this.first_roll});
}

class Model {
  Model();
  String name, roll;
  User users = FirebaseAuth.instance.currentUser;

  var _firestore = FirebaseFirestore.instance;
// GETLIST OF THE DATA===============================================================================================================
  Future GetallList() async {
    List boxlist = [], classroomcode = [];

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(users.email + 'doc1')
          .get()
          .then((value) {
        print('value.ata()');
        print(value.data());
        List.from(value.data()['classcodes']).forEach((element) {
          classroomcode.add(element);
          print(element);
        });
      });
    } catch (e) {
      print(e.toString());
      return null;
    }
    try {
      for (int i = 0; i < classroomcode.length; i++) {
        print('classroom loop executed');
        await _firestore
            .collection('classes')
            .doc(classroomcode[i])
            .get()
            .then((result) {
          print('getting all List');
          boxlist.add(listitem(
            dept: result.data()['dept'],
            series: result.data()['series'],
            section: result.data()['section'],
            course: result.data()['course'],
            course_code: result.data()['course_code'],
            uuid: result.data()['uuid'],
            first_roll: result.data()['first_roll'],
          ));
          print(result.data()['first_roll']);
        });
        print(boxlist.length);
      }

      return boxlist;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// EXIST THE DATA OR NOT======================================================================================================================
  bool class_already_exists(String docname) {
    print(docname);
    FirebaseFirestore.instance
        .collection('classes')
        .doc('classList')
        .get()
        .then((value) {
      print(value.data());
    });
  }

// ADD CLASSROOM TO CLASSES===================================================================================================================
  void add_classroom_to_classes(String dept, String series, String section,
      String course, String course_code, String uuid, int firstRoll) {
    FirebaseFirestore.instance
        .collection('classes')
        .doc(uuid)
        .set({
          'dept': dept,
          'series': series, // John Doe
          'section': section,
          'course': course,
          'course_code': course_code,
          'first_roll': firstRoll.toString(),
          'uuid': uuid,

          // Stokes and Sons
        }, SetOptions(merge: true))
        .then(
            (value) => print("Class added to classes collection Successfully"))
        .catchError(
            (error) => print("Failed to add user: User already available"));

    for (int i = 0; i < 60; i++) createPresentSheet(firstRoll + i, uuid);
  }

// ADD CLASSROOM TO ID===========================================================================================================
  void add_class_to_id(String uuid) {
    // FirebaseFirestore.instance
    //     .collection('users')
    //     .doc(users.email + 'doc1')
    //     .collection('classes')
    //     .doc(uuid)
    //     .set({
    //       'classroomcode': uuid, // Stokes and Sons
    //     }, SetOptions(merge: true))
    //     .then((value) => print("Class added to id Successfully"))
    //     .catchError(
    //         (error) => print("Failed to add user: User already available"));

    FirebaseFirestore.instance
        .collection('users')
        .doc(users.email + 'doc1')
        .set({
      'classcodes': FieldValue.arrayUnion([uuid]),
    }, SetOptions(merge: true));
  }

  // Future<void> _onPressed() async {
  //   _firestore
  //       .doc(users.email + 'doc1')
  //       .collection('classes')
  //       .where('search', isEqualTo: 'all')
  //       .snapshots()
  //       .listen((result) {
  //     result.docChanges.forEach((res) {
  //       if (res.type == DocumentChangeType.added) {
  //         print("added");
  //         // print(res.doc.data());
  //       } else if (res.type == DocumentChangeType.modified) {
  //         print("modified");
  //         // print(res.doc.data());
  //       } else if (res.type == DocumentChangeType.removed) {
  //         print("removed");
  //         // print(res.doc.data());
  //       }
  //     });
  //   });
  // }

  Future<bool> check() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
      }
    } on SocketException catch (_) {
      print('not connected');
    }
  }
}

class Profile {
  String name = '', dept = '', photourl = '';
  User users = FirebaseAuth.instance.currentUser;
  CollectionReference _firestore =
      FirebaseFirestore.instance.collection('users');
  List boxlist = [''];

  Future getProfile() async {
    try {
      print(users.email + 'doc1');
      await FirebaseFirestore.instance
          .collection('users')
          .doc(users.email + 'doc1')
          .get()
          .then((result) {
        print('you are there');
        // print(result.data());
        print('i am here');

        this.name =
            result.data()['first_name'] + ' ' + result.data()['last_name'];
        this.dept = result.data()['Dept.'];
        print(name);
        boxlist.add(this.name);
        boxlist.add(this.dept);
        boxlist.add(this.photourl);
      });
      return boxlist;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

String convertToTitleCase(String text) {
  if (text == null) {
    return null;
  }

  if (text.length <= 1) {
    return text.toUpperCase();
  }

  // Split string into multiple words
  final List<String> words = text.split(' ');

  // Capitalize first letter of each words
  final capitalizedWords = words.map((word) {
    final String firstLetter = word.substring(0, 1).toUpperCase();
    final String remainingLetters = word.substring(1);

    return '$firstLetter$remainingLetters';
  });

  // Join/Merge all words back to one String
  return capitalizedWords.join(' ');
}

extension CapitalizedStringExtension on String {
  String toTitleCase() {
    return convertToTitleCase(this);
  }
}

//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
void updatePresent(String roll, String uuid, List presentList) {
  String present = '';
  for (int i = 0; i < presentList.length; i++) {
    present += presentList[i].toString();
  }
  print('present' + present);
  FirebaseFirestore.instance
      .collection('classes')
      .doc(uuid)
      .collection('present')
      .doc('presentdoc')
      .set({
        roll: present,
      }, SetOptions(merge: true))
      .then((value) => print("Updated the roll present"))
      .catchError((error) => print("failed to update roll present"));
}
void updateCtMarks(String roll, String uuid, List presentList) {
  String present = '';
  for (int i = 0; i < presentList.length; i++) {
    present += presentList[i].toString();
  }
  print('present' + present);
  FirebaseFirestore.instance
      .collection('classes')
      .doc(uuid)
      .collection('ctmarks')
      .doc('ctmarksdoc')
      .set({
        roll: present,
      }, SetOptions(merge: true))
      .then((value) => print("Updated the roll marks"))
      .catchError((error) => print("failed to update roll marks"));
}

void createPresentSheet(int roll, String uuid) async {
  String present = '', ctMarks = '';
  for (int i = 0; i < 70; i++) {
    present += '1';
  }
  ctMarks = '00000000';
  print(present);
  FirebaseFirestore.instance
      .collection('classes')
      .doc(uuid)
      .collection('present')
      .doc('presentdoc')
      .set({
        roll.toString(): present,
      }, SetOptions(merge: true))
      .then((value) => print("Updated the roll present"))
      .catchError((error) => print("failed to update roll present"));
  FirebaseFirestore.instance
      .collection('classes')
      .doc(uuid)
      .collection('ctmarks')
      .doc('ctmarksdoc')
      .set({
        roll.toString(): ctMarks,
      }, SetOptions(merge: true))
      .then((value) => print("Updated the roll present"))
      .catchError((error) => print("failed to update roll present"));
}

Future getPresentSheet(int roll, String uuid) async {
  print(uuid);
  List boxlist = List.generate(
    60,
    (i) => new List(),
  );
  String temp = '';
  try {
    await FirebaseFirestore.instance
        .collection('classes')
        .doc(uuid)
        .collection('present')
        .doc('presentdoc')
        .get()
        .then((result) {
      for (int i = 0; i < 60; i++, roll++) {
        // print(result.data()[roll.toString()]);
        temp = result.data()[roll.toString()];
        // print(temp.length);
        for (int k = 0; k < 70; k++) {
          boxlist[i].add(temp[k].toString());
        }
        // boxlist.add(result.data()[roll.toString()]);
        // print(boxlist[i].length);

      }
    });
    return boxlist;
  } catch (e) {
    print(e.toString());
  }
}

Future getCtMarksSheet(int roll, String uuid) async {
  print(uuid);
  List boxlist = List.generate(
    60,
    (i) => new List(),
  );
  String temp = '';
  try {
    await FirebaseFirestore.instance
        .collection('classes')
        .doc(uuid)
        .collection('ctmarks')
        .doc('ctmarksdoc')
        .get()
        .then((result) {
      for (int i = 0; i < 60; i++, roll++) {
        // print(result.data()[roll.toString()]);
        temp = result.data()[roll.toString()];
        print(temp);
        for (int k = 0; k < 8; k++) {
          boxlist[i].add(temp[k].toString());
        }
        // boxlist.add(result.data()[roll.toString()]);
        // print(boxlist[i].length);

      }
    });
    return boxlist;
  } catch (e) {
    print(e.toString());
  }
}



Future<bool> check(context) async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      print('connected');
      return true;
    }
  } on SocketException catch (_) {
    print('not connected');
    showTopSnackBar(
      context,
      CustomSnackBar.error(
        message:
            "Something went wrong. Please check your Internet connection and try again",
            
      ),
    );
    return false;
  }
}
