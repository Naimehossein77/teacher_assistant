import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample/components/allclass.dart';
import 'package:sample/components/test.dart';

class emailVarification extends StatefulWidget {
  emailVarification({
    Key key,
  }) : super(key: key);
  @override
  _emailVarificationState createState() => _emailVarificationState();
}

class _emailVarificationState extends State<emailVarification> {
  var user = FirebaseAuth.instance.currentUser;
  Timer timer;
  void initState() {
    super.initState();
    user.sendEmailVerification();
    checkEmailVarified();
  }

  checkEmailVarified() async {
    int cnt = 0;
    timer = Timer.periodic(Duration(seconds: 1), (timer) async {
      user.reload();
      user = await FirebaseAuth.instance.currentUser;
      if (user.emailVerified) {
        successAlert(context, 'Successfully Varified');
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => allclass()));
        timer.cancel();
      } else
        print(user.emailVerified);
      print(cnt.toString());
      cnt++;
      user.reload();
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            'An email has been sent to ${user.email}. Please varify email. After varification you will be automatically logged in to your account. Thank from Naim'),
      ),
    );
  }
}
