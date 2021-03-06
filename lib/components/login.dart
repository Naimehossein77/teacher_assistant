import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample/components/allclass.dart';
import 'package:sample/components/signup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class login extends StatefulWidget {
  login({Key key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final series = TextEditingController();
  final password = TextEditingController();
  final subject = TextEditingController();
  Function validator;
  String errormessage = '';
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: "example@gmail.com",
                        labelText: 'Enter Email',
                        border: OutlineInputBorder(),

                        filled: true,
                        // fillColor: Colors.grey[200],
                      ),
                      validator: (String value) {
                        if (value.isEmpty) return 'Enter Email';
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: 'Enter Password',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                      validator: (String value) {
                        if (value.isEmpty) return 'Enter Password';
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
                    child: Text(
                      errormessage,
                      style: TextStyle(fontSize: 12, color: Colors.red[800]),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () async {
                      if (_formkey.currentState.validate()) {
                        try {
                          UserCredential userCredential = await FirebaseAuth
                              .instance
                              .signInWithEmailAndPassword(
                                  email: email.text, password: password.text);
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/allclass');
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            print('No user found for that email.');
                          } else if (e.code == 'wrong-password') {
                            print('Wrong password provided for that user.');
                          }
                          setState(() {
                            errormessage = 'Wrong Username or Password';
                          });
                        }
                        print('Logged in successfully');
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
