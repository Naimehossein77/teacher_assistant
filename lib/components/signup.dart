import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sample/components/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:validators/validators.dart';
import 'main_drawer.dart';

class signup extends StatefulWidget {
  signup({Key key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final series = TextEditingController();
  final password = TextEditingController();
  final subject = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final sirdept = TextEditingController();
  bool loader = false;
  Function validator;
  String warning = '';
// FIREBASE CODES
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    FocusScopeNode currentFocus = FocusScope.of(context);
    User user = FirebaseAuth.instance.currentUser;
    Future<void> addUser(String documentID) async {
      // Call the user's CollectionReference to add a new user
      users
          .doc(documentID)
          .set({
            'first_name': firstName.text,
            'last_name': lastName.text, // John Doe
            'Dept.': sirdept.text, // Stokes and Sons
          }, SetOptions(merge: true))
          .then((value) => print("User Added"))
          .catchError(
              (error) => print("Failed to add user: User already available"));
    }

    return loader
        ? Loading()
        : GestureDetector(
            onTap: () {
              if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
            },
            child: Scaffold(
              appBar: AppBar(
                title: Text('SignUp'),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 11.0),
                    child: Icon(Icons.ac_unit),
                  )
                ],
              ),
              body: Container(
                child: Form(
                  key: _formkey,
                  child: Padding(
                    padding: EdgeInsets.only(top: mheight * .05),
                    child: Center(
                      child: Container(
                        width: mwidth * .90,
                        child: ListView(
                          //shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                controller: firstName,
                                decoration: InputDecoration(
                                  contentPadding:
                                      new EdgeInsets.symmetric(vertical: 10),
                                  hintText: "ex: Xavier",
                                  labelText: 'First Name',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Icon(
                                      FontAwesomeIcons.fileSignature,
                                      size: 17,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.name,
                                validator: (String value) {
                                  if (value.isEmpty) return 'Enter First Name';
                                  if (isEmail(value))
                                    return 'Enter a valid FirstName';
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                controller: lastName,
                                decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(
                                    vertical: 10.0,
                                  ),
                                  hintText: "ex: David",
                                  labelText: 'Last Name',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Icon(
                                      FontAwesomeIcons.fileSignature,
                                      size: 17,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.name,
                                validator: (String value) {
                                  if (value.isEmpty) return 'Enter Last Name';
                                  if (!isAlpha(value))
                                    return 'Enter a valid LastName';
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                controller: sirdept,
                                decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(
                                    vertical: 10.0,
                                  ),
                                  hintText: "CSE/HUM/CE/ME",
                                  labelText: 'Your Department',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Icon(
                                      FontAwesomeIcons.building,
                                      size: 17,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.name,
                                validator: (String value) {
                                  if (value.isEmpty)
                                    return 'Enter your Department';
                                  sirdept.text = value.toUpperCase();
                                  if (!isAlpha(value))
                                    return 'Enter a valid Department';
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                controller: email,
                                decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(
                                    vertical: 10.0,
                                  ),
                                  hintText: "example@gmail.com",
                                  labelText: 'Enter Email',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Icon(
                                      Icons.email,
                                      size: 19,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (String value) {
                                  if (value.isEmpty) return 'Enter Email';
                                  if (!isEmail(value))
                                    return 'Enter a valid Email';
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                controller: password,
                                decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(
                                    vertical: 10.0,
                                  ),
                                  hintText: "Password",
                                  labelText: 'Enter Password',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Icon(
                                      FontAwesomeIcons.unlock,
                                      size: 17,
                                    ),
                                  ),
                                ),
                                validator: (String value) {
                                  if (value.isEmpty || value.length < 6)
                                    return 'Password must be at least 6 charecters';
                                  return null;
                                },
                                keyboardType: TextInputType.name,
                                obscureText: true,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                warning,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.red[700]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  mwidth * .19, 10, mwidth * .19, 0),
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
                                      if (_formkey.currentState.validate()) {
                                        print('Signup Successful');
                                      }
                                      try {
                                        UserCredential userCredential =
                                            await FirebaseAuth.instance
                                                .createUserWithEmailAndPassword(
                                          email: email.text,
                                          password: password.text,
                                        )
                                                .then((_) {
                                          addUser(email.text + 'doc1');

                                          Navigator.of(context)
                                              .pushNamedAndRemoveUntil(
                                                  '/login',
                                                  (Route<dynamic> route) =>
                                                      false);
                                          return null;
                                        });
                                        setState(() {
                                          loader = true;
                                        });
                                      } on FirebaseAuthException catch (e) {
                                        if (e.code == 'weak-password') {
                                          print(
                                              'The password provided is too weak.');
                                        } else if (e.code ==
                                            'email-already-in-use') {
                                          setState(() {
                                            warning =
                                                'Email account already exists. Try another email.';
                                          });

                                          print(
                                              'The account already exists for that email.');
                                        }
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Wrap(children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              55, 2, 40, 2),
                                          child: Text("Sign Up",
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
                            ),
                            Container(
                              height: 60,
                              child: RaisedButton(
                                onPressed: () async {
                                  if (_formkey.currentState.validate()) {
                                    print('Signup Successful');
                                  }
                                  try {
                                    UserCredential userCredential =
                                        await FirebaseAuth.instance
                                            .createUserWithEmailAndPassword(
                                      email: email.text,
                                      password: password.text,
                                    )
                                            .then((_) {
                                      addUser(email.text + 'doc1');

                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil('/login',
                                              (Route<dynamic> route) => false);
                                      return null;
                                    });
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'weak-password') {
                                      print(
                                          'The password provided is too weak.');
                                    } else if (e.code ==
                                        'email-already-in-use') {
                                      setState(() {
                                        warning =
                                            'Email account already exists. Try another email.';
                                      });

                                      print(
                                          'The account already exists for that email.');
                                    }
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: ListTile(
                                    title: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 25.0,
                                        ),
                                        child: Text(
                                          'Sign Up',
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
                                ),
                                color: Theme.of(context).primaryColor,
                              ),
                            )
                          ],
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
