import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sample/components/allclass.dart';
import 'package:sample/components/signup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sample/components/test.dart';
import 'package:sample/main.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'auth.dart';
import 'package:page_transition/page_transition.dart';

class login extends StatefulWidget {
  login({Key key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

// LOGINSTATE========================================================================================================
class _loginState extends State<login> {
  final _formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final series = TextEditingController();
  final password = TextEditingController();
  final subject = TextEditingController();
  AnimationController _controller;
  bool loader = false;
  Container cn = Container(
    alignment: Alignment.center,
    child: SpinKitDoubleBounce(
      color: Colors.white,
      size: 50,
    ),
  );

  Function validator;
  String errormessage = '';
  void initState() {
    check(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    FocusScopeNode currentFocus = FocusScope.of(context);
    return (loader)
        ? Loading()
        : GestureDetector(
            onTap: () {
              if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
            },
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  'Teachers Portal',
                  style: TextStyle(fontSize: 16),
                ),
                leading: Icon(Icons.ac_unit),
              ),
              body: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    color: Colors.white,
                    child: Form(
                      key: _formkey,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Container(
                            width: mwidth * .80,
                            child: ListView(
                              children: [
                                cn,
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                  child: Container(
                                    child: TextFormField(
                                      controller: email,
                                      decoration: InputDecoration(
                                        hintText: "example@gmail.com",
                                        labelText: 'Enter Email',
                                        border: OutlineInputBorder(),
                                        filled: true,
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 3.0),
                                          child: Icon(
                                            Icons.email,
                                            size: 19,
                                          ),
                                        ),
                                        // fillColor: Colors.grey[200],
                                      ),
                                      validator: (String value) {
                                        if (value.isEmpty) return 'Enter Email';
                                        return null;
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                  child: TextFormField(
                                    controller: password,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      labelText: 'Enter Password',
                                      border: OutlineInputBorder(),
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      prefixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 3.0),
                                        child: Icon(
                                          FontAwesomeIcons.unlock,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty)
                                        return 'Enter Password';
                                      return null;
                                    },
                                    keyboardType: TextInputType.name,
                                    obscureText: true,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 5, 0, 0),
                                  child: Text(
                                    errormessage,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.red[800]),
                                  ),
                                ),
                                RaisedButton(
                                  onPressed: () async {
                                    if (_formkey.currentState.validate()) {
                                      setState(() {
                                        // loader = true;
                                        cn = Container(
                                          alignment: Alignment.center,
                                          child: SpinKitDoubleBounce(
                                            color: Colors.pink[100],
                                            size: 50,
                                            controller: _controller,
                                          ),
                                        );
                                      });
                                      try {
                                        UserCredential userCredential =
                                            await FirebaseAuth.instance
                                                .signInWithEmailAndPassword(
                                                    email: email.text,
                                                    password: password.text);
                                        setState(() {
                                          loader = true;
                                        });
                                        Navigator.pop(context);
                                        Navigator.of(context).push(
                                            PageTransition(
                                                type: PageTransitionType
                                                    .rightToLeft,
                                                child: allclass()));
                                      } on FirebaseAuthException catch (e) {
                                        if (e.code == 'user-not-found') {
                                          print(
                                              'No user found for that email.');
                                        } else if (e.code == 'wrong-password') {
                                          print(
                                              'Wrong password provided for that user.');
                                        }
                                        dynamic ok = check(context);

                                        setState(() {
                                          errormessage =
                                              'Wrong Username or Password';
                                          loader = false;

                                          cn = Container(
                                            alignment: Alignment.center,
                                            child: SpinKitDoubleBounce(
                                              color: Colors.white,
                                              size: 50,
                                              controller: _controller,
                                            ),
                                          );
                                        });
                                      }
                                    }
                                  },
                                  child: ListTile(
                                    title: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25.0),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/signup');
                                  },
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: 'Don\'t have an account? ',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600])),
                                      TextSpan(
                                          text: 'Sign Up',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.green[700],
                                              fontWeight: FontWeight.bold)),
                                    ]),
                                  ),
                                ),
                                RaisedButton(
                                  onPressed: () async {
                                    await Auth()
                                        .signInGoogle()
                                        .whenComplete(() {
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil('/allclass',
                                              (Route<dynamic> route) => false);
                                    });
                                  },
                                  child: Text('SingIn with Google'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}

// LOADING==============================================================================================================================
class Loading extends StatelessWidget {
  const Loading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white60,
        child: Center(
          child: SpinKitThreeBounce(
            color: Colors.pink[100],
            size: 100,
          ),
        ),
      ),
    );
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
