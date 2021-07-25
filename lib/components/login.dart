import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
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
import 'package:validators/validators.dart';
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
  bool isLoading = false;
  Container cn = Container(
    alignment: Alignment.center,
    child: SpinKitDoubleBounce(
      color: Colors.purple[100],
      size: 80,
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
              // appBar: AppBar(
              //   title: Text(
              //     'Teachers Portal',
              //     style: TextStyle(fontSize: 16),
              //   ),
              //   leading: Image.asset('assets/icon.png'),
              // ),
              body: Stack(alignment: Alignment.topCenter, children: [
                Container(),
                Positioned(
                  child: Container(
                    height: mheight * .30,
                    width: mwidth,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: const AssetImage('assets/ruetgate1.png'),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.74), BlendMode.dstIn),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: mheight * .27,
                  decoration: BoxDecoration(
                    color: const Color(0x40000000),
                  ),
                ),
                Positioned(
                  top: mheight * .20,
                  child: Container(
                    color: Colors.transparent,
                    height: mheight,
                    width: mwidth * 1,
                    child: SvgPicture.string(
                      '<svg viewBox="0 162.4 360.0 467.6" ><path transform="translate(-2966.0, 1.27)" d="M 2966.000244140625 176.6501770019531 C 2966.000244140625 176.6501770019531 3009.296630859375 177.2010803222656 3037.35888671875 171.4167175292969 C 3065.421142578125 165.6323547363281 3135.97802734375 152.4109497070312 3221.768798828125 169.7640228271484 C 3307.559326171875 187.1171264648438 3326.000244140625 184.0872039794922 3326.000244140625 184.0872039794922 L 3326.000244140625 343.0194091796875 L 2966.000244140625 343.0194091796875 L 2966.000244140625 176.6501770019531 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: mheight * .27,
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.only(top: mheight * .0),
                      child: Container(
                        color: Colors.transparent,
                        child: Form(
                          key: _formkey,
                          child: Center(
                            child: Container(
                              width: mwidth * 1,
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 15, 20, 0),
                                    child: TextFormField(
                                      controller: email,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            new EdgeInsets.symmetric(
                                          vertical: 10.0,
                                        ),
                                        hintText: "example@gmail.com",
                                        labelText: 'Enter Email',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
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
                                        print('validator checked' + value);
                                        if (value.isEmpty) return 'Enter Email';
                                        return null;
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 15, 20, 0),
                                    child: TextFormField(
                                      controller: password,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            new EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 5.0),
                                        hintText: "Password",
                                        labelText: 'Enter Password',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        filled: true,
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 3.0),
                                          child: Icon(
                                            FontAwesomeIcons.unlock,
                                            size: 17,
                                          ),
                                        ),
                                        //suffixIcon: Icon(FontAwesomeIcons.)
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
                                    padding: EdgeInsets.fromLTRB(25, 5, 0, 0),
                                    child: Text(
                                      errormessage,
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.red[800]),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        mwidth * .25, 10, mwidth * .25, 0),
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
                                            if (_formkey.currentState
                                                .validate()) {
                                              setState(() {
                                                isLoading = true;
                                                //   cn = Container(
                                                //     alignment: Alignment.center,
                                                //     child: SpinKitDoubleBounce(
                                                //       color: Colors.purple[100],
                                                //       size: 60,
                                                //       controller: _controller,
                                                //     ),
                                                //   );
                                              });

                                              try {
                                                UserCredential userCredential =
                                                    await FirebaseAuth.instance
                                                        .signInWithEmailAndPassword(
                                                            email: email.text,
                                                            password:
                                                                password.text);
                                                // setState(() {
                                                //   loader = true;
                                                // });
                                                FirebaseAuth
                                                    .instance.currentUser
                                                    .reload();
                                                var user = await FirebaseAuth
                                                    .instance.currentUser;
                                                print(
                                                    'user: ' + user.toString());
                                                if (user.emailVerified) {
                                                  print(user.emailVerified);
                                                  Navigator.pop(context);
                                                  Navigator.of(context).pushReplacement(
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          child: allclass()));
                                                } else {
                                                  setState(() {
                                                    errormessage =
                                                        'Please Varify your Email Address';
                                                    isLoading = false;
                                                  });
                                                }
                                              } on FirebaseAuthException catch (e) {
                                                if (e.code ==
                                                    'user-not-found') {
                                                  print(
                                                      'No user found for that email.');
                                                  errormessage =
                                                      'Wrong Email Address';
                                                } else if (e.code ==
                                                    'wrong-password') {
                                                  print(
                                                      'Wrong password provided for that user.');
                                                  errormessage =
                                                      'Wrong Password!';
                                                }
                                                dynamic ok = check(context);

                                                setState(() {
                                                  isLoading = false;

                                                  // cn = Container(
                                                  //   alignment: Alignment.center,
                                                  //   child: SpinKitDoubleBounce(
                                                  //     color: Colors.transparent,
                                                  //     size: 60,
                                                  //     controller: _controller,
                                                  //   ),
                                                  // );
                                                });
                                              }
                                            }
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Wrap(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        55, 2, 40, 2),
                                                child: Text("Login",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 21,
                                                ),
                                              )
                                            ]),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: mwidth * .25,
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/signup');
                                      },
                                      child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'Don\'t have an account?',
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
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: mwidth * .21),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                side: BorderSide(
                                                    color:
                                                        Colors.transparent))),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                HexColor('#EEEEEE')),
                                      ),
                                      onPressed: () async {
                                        // await Auth()
                                        //     .signInGoogle()
                                        //     .whenComplete(() {
                                        //   Navigator.of(context)
                                        //       .pushNamedAndRemoveUntil(
                                        //           '/allclass',
                                        //           (Route<dynamic> route) =>
                                        //               false);
                                        // });
                                      },
                                      child: Wrap(children: [
                                        Image(
                                          image:
                                              AssetImage('assets/google.png'),
                                          height: 36,
                                          width: 36,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 10, 10, 10),
                                          child: Text(
                                            'SignIn with Google',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ]),
                                    ),
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
                Positioned(
                  top: mheight * .23,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/icon.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: mheight * .21,
                    left: 0,
                    right: 0,
                    child: isLoading ? cn : Container()),
              ]),
            ),
          );
  }
}

// LOADING==============================================================================================================================

