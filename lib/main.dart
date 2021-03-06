import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sample/components/allclass.dart';
import 'package:sample/components/dashboard.dart';
import 'package:sample/components/login.dart';
import 'package:sample/components/signup.dart';
import 'components/main_drawer.dart';

//FIREBASE IMPORTS
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Homepage());
}

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  login(),

        routes: {
          '/signup':(_)=>signup(),
          '/login':(_)=>login(),
          '/allclass':(_)=>allclass(),
          '/dashboard':(_)=>dashboard(),
        },
        
        );
  }
}


// class HomePage extends StatelessWidget {
//   const HomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).primaryColor,
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           iconSize: 30.0,
//           color: Colors.white,
//           onPressed: () {},
//         ),
//         title: Text(
//           'ChatsUp',
//           style: TextStyle(
//             fontSize: 28.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         elevation: 0.0,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             iconSize: 30.0,
//             color: Colors.white,
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           CategorySelector(),
//           Expanded(
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Theme.of(context).accentColor,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30.0),
//                   topRight: Radius.circular(30.0),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   favoriteContacts(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
