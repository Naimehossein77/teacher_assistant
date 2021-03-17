import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sample/components/allclass.dart';
import 'dart:io';
import 'package:uuid/uuid.dart';

class listitem {
  String dept = '',
      section = '',
      series = '',
      subject = '',
      search = '',
      uuid = '';
  listitem({this.dept, this.series, this.section, this.subject, this.uuid});
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
      print('come here');
    } catch (e) {
      print(e.toString());
      return null;
    }
    print(classroomcode.length);
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
              subject: result.data()['subject'],
              uuid: result.data()['uuid']));
        
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
  void add_classroom_to_classes(
      String dept, String series, String section, String subject, String uuid) {
    FirebaseFirestore.instance
        .collection('classes')
        .doc(uuid)
        .set({
          'dept': dept,
          'series': series, // John Doe
          'section': section,
          'subject': subject,
          // Stokes and Sons
        }, SetOptions(merge: true))
        .then(
            (value) => print("Class added to classes collection Successfully"))
        .catchError(
            (error) => print("Failed to add user: User already available"));

    FirebaseFirestore.instance.collection('classes').doc('classList').set({
      'classroom': FieldValue.arrayUnion([dept + series + section + subject]),
    });
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
