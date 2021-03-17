import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    Future<void> addUser(String documentID) async{
      // Call the user's CollectionReference to add a new user
      users
          .doc(documentID)
          .set({
            'first_name': firstName.text,
            'last_name': lastName.text, // John Doe
            'Dept.': sirdept.text, // Stokes and Sons
          },SetOptions(merge: true))
          .then((value) => print("User Added"))
          .catchError(
              (error) => print("Failed to add user: User already available"));
    }

    return loader
        ? Loading()
        : GestureDetector(
          onTap: (){if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();},
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
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Center(
                      child: Container(
                        width: mwidth * .80,
                        child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                controller: firstName,
                                decoration: InputDecoration(
                                  hintText: "ex: Xavier",
                                  labelText: 'First Name',
                                  border: OutlineInputBorder(),
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
                                  hintText: "ex: David",
                                  labelText: 'Last Name',
                                  border: OutlineInputBorder(),
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
                                  hintText: "CSE/HUM/CE/ME",
                                  labelText: 'Your Department',
                                  border: OutlineInputBorder(),
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
                                  hintText: "example@gmail.com",
                                  labelText: 'Enter Email',
                                  border: OutlineInputBorder(),
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
                                  hintText: "Password",
                                  labelText: 'Enter Password',
                                  border: OutlineInputBorder(),
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
                            Text(
                              warning,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.red[700]),
                            ),
                            RaisedButton(
                              onPressed: () async {
                                if (_formkey.currentState.validate()) {
                                  print('null printed');

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

                                    Navigator.of(context).pushNamedAndRemoveUntil(
                                        '/login',
                                        (Route<dynamic> route) => false);
                                    return null;
                                  });
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'weak-password') {
                                    print('The password provided is too weak.');
                                  } else if (e.code == 'email-already-in-use') {
                                    setState(() {
                                      warning =
                                          'Email account already exists. Try another email.';
                                    });

                                    print(
                                        'The account already exists for that email.');
                                  }
                                }
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.pink,
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
