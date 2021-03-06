import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sample/components/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:validators/validators.dart';

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
  Function validator;
// FIREBASE CODES
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'first_name': 'Jubair',
          'last_name': 'Hossain', // John Doe
          'Dept.': 'CSE', // Stokes and Sons
          'age': '40' // 42
        })
        .then((value) => print("User Added"))
        .catchError(
            (error) => print("Failed to add user: User already available"));
  }

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: Container(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: mheight * .50,
              width: mwidth * .90,
              child: ListView(
                children: [
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
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (String value) {
                        if (value.isEmpty) return 'Enter Email';
                        if (isEmail(email.text)) return 'Enter a valid Email';
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
                  RaisedButton(
                    onPressed: () async {
                      if (_formkey.currentState.validate()) {
                        print('null printed');

                        print('Signup Successful');
                      }
                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .createUserWithEmailAndPassword(
                                email: email.text, password: password.text);
                        Navigator.pop(context);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
