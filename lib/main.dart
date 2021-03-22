import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:sample/components/allclass.dart';
import 'package:sample/components/auth.dart';
import 'package:sample/components/dashboard.dart';
import 'package:sample/components/editprofile.dart';
import 'package:sample/components/login.dart';
import 'package:sample/components/signup.dart';
import 'package:sample/components/test.dart';
import 'components/main_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

//FIREBASE IMPORTS
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print('this is main');

  runApp(Homepage());
}

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

// ========================================================================================================================================================
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    return GestureDetector(
      onTap: () {
        if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
      },
      child: MaterialApp(
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: HexColor('#610A93'),
          accentColor: HexColor("#8346A7"),

          // Define the default font family.
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        ),
        debugShowCheckedModeBanner: false,
        home: root(),
        routes: {
          '/signup': (_) => signup(),
          '/login': (_) => login(),
          '/allclass': (_) => allclass(),
          '/dashboard': (_) => dashboard(),
          '/editprofilepage': (_) => editprofilepage(),
        },
      ),
    );
  }
}

class root extends StatefulWidget {
  root({Key key}) : super(key: key);

  @override
  _rootState createState() => _rootState();
}

//=======================================================================================================================================================================================
class _rootState extends State<root> {
  @override
  Widget build(BuildContext context) {
    Model model = Model();
    User usermain = FirebaseAuth.instance.currentUser;
    print(usermain);
    check();
    // FirebaseAuth.instance.authStateChanges().listen((User user) {
    //   if (user == null) {
    //     print('user is signed out');
    //   } else {
    //     print('user is signed in');
    //     usermain = user;
    //   }
    // });

    return (usermain == null) ? login() : Loading();
  }
}

class Loading extends StatefulWidget {
  const Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      MyNavigator.goToIntro(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white70,
        child: Center(
          child: SpinKitThreeBounce(
            color: HexColor('#8C3FB8'),
            size: 30,
          ),
        ),
      ),
    );
  }
}

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  static void goToIntro(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/allclass', (Route<dynamic> route) => false);
  }
}

void check() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      print('connected');
    }
  } on SocketException catch (_) {
    print('not connected');
  }
}
