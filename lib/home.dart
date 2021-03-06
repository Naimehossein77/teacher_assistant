// import 'dart:io';

// import 'package:flutter/material.dart';

// class home extends StatefulWidget {
//   String text = "second";
//   File image;
//   home({
//     Key key,
//     this.text,
//     this.image,
//   }) : super(key: key);

//   @override
//   _homeState createState() => _homeState();
// }

// class _homeState extends State<home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [],
//         title: Text(widget.text),
//         // leading: IconButton(
//         //   icon: Icon(Icons.skip_previous),
//         //   onPressed: () {
//         //     Navigator.pop(context);
//         //   },
//       ),
//       body: Container(
//         height: 300,
//         child: widget.image == null
//             ? Text("No image passed!")
//             : Center(child: Image.file(widget.image)),
//       ),
//     );
//   }
// }



// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }
// //
// // class _HomePageState extends State<HomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //    Widget image_carousel = new Container(
// //      height: 200.0,
// //      child: new Carousel(
// //        boxFit: BoxFit.cover,
// //        images: [
// //          AssetImage('images/c1.jpg'),
// //          AssetImage('images/m1.jpeg'),
// //          AssetImage('images/w3.jpeg'),
// //          AssetImage('images/w4.jpeg'),
// //          AssetImage('images/m2.jpg'),
// //        ],
// //        autoplay: false,
// //        animationCurve: Curves.fastOutSlowIn,
// //        animationDuration: Duration(milliseconds: 1000),
// //        dotSize: 4.0,
// //        indicatorBgPadding: 2.0,
// //      ),
// //    );
// //
// //
// //     return Scaffold(
// //       appBar: AppBar(
// //         elevation: 0.1,
// //         backgroundColor: Colors.red,
// //         title: Text('FashApp'),
// //         actions: [
// //           IconButton(icon: Icon(Icons.search), onPressed: () {}),
// //           IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
// //         ],
// //       ),
// //       drawer: Drawer(
// //         child: ListView(
// //           children: <Widget>[
// //             //HEADER
// //             new UserAccountsDrawerHeader(
// //               accountName: Text('Juvair Nayeem'),
// //               accountEmail: Text('naimehossein77@gmail.com'),
// //               currentAccountPicture: GestureDetector(
// //                 child: new CircleAvatar(
// //                   backgroundColor: Colors.grey,
// //                   child: Icon(
// //                     Icons.person,
// //                     color: Colors.white,
// //                   ),
// //                 ),
// //               ),
// //               decoration: new BoxDecoration(
// //                 color: Colors.pink,
// //               ),
// //             ),
// //             InkWell(
// //               child: ListTile(
// //                 onTap: () {},
// //                 title: Text('Home Page'),
// //                 leading: Icon(Icons.home),
// //               ),
// //             ),
// //             InkWell(
// //               child: ListTile(
// //                 onTap: () {},
// //                 title: Text('My Account'),
// //                 leading: Icon(Icons.person),
// //               ),
// //             ),
// //             InkWell(
// //               child: ListTile(
// //                 onTap: () {},
// //                 title: Text('My Orders'),
// //                 leading: Icon(Icons.shopping_basket),
// //               ),
// //             ),
// //             InkWell(
// //               child: ListTile(
// //                 onTap: () {},
// //                 title: Text('Categoris'),
// //                 leading: Icon(Icons.dashboard),
// //               ),
// //             ),
// //             InkWell(
// //               child: ListTile(
// //                 onTap: () {},
// //                 title: Text('Favourites'),
// //                 leading: Icon(Icons.favorite),
// //               ),
// //             ),
// //             Divider(),
// //             InkWell(
// //               child: ListTile(
// //                 onTap: () {},
// //                 title: Text('Settings'),
// //                 leading: Icon(Icons.settings,color: Colors.blue,),
// //               ),
// //             ),
// //             InkWell(
// //               child: ListTile(
// //                 onTap: () {},
// //                 title: Text('About'),
// //                 leading: Icon(Icons.help, color: Colors.blue,),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //       body: new ListView(
// //         children: [
// //           //IMAGE_CAROUSEL_STARTS_HERE
// //           image_carousel,
// //           //PADDING_WIDGET
// //           new Padding(padding: const EdgeInsets.all(8.0),
// //           child: new Text('Categories'),),
// //
// //           HorizontalList(),
// //           new Padding(padding: const EdgeInsets.all(15.0),
// //             child: new Text('Recent Products'),),
// //
// //         //  GRID_VIEW
// //           Container(
// //             height: 320.0,
// //             child: Products(),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         appBar: AppBar(
// //           flexibleSpace: Container(
// //             decoration: BoxDecoration(
// //               gradient: LinearGradient(
// //                 begin: Alignment.center,
// //                 end: Alignment.bottomCenter,
// //
// //                 colors: [Colors.red,Colors.yellow,],
// //               ),
// //
// //             ),
// //           ),
// //         ),
// //         body: Container(
// //           decoration: BoxDecoration(
// //             gradient: LinearGradient(
// //               begin: Alignment.center,
// //               end: Alignment.bottomCenter,
// //               tileMode: TileMode.repeated,
// //               colors: [Colors.pink,Colors.deepPurple,],
// //             ),
// //
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     final providerdata=Provider.of<Data>(context);
// //     return SafeArea(
// //         child: Scaffold(
// //           body: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Text(providerdata.value.toString(),style: TextStyle(fontSize: 50),),
// //               RaisedButton(
// //                   onPressed: (){
// //                     providerdata.Increment();
// //                   }
// //               ),
// //             ],
// //           ),
// //         )
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   File _image;
// //   Future CameraImage() async{
// //   var image = await ImagePicker.pickImage(source: ImageSource.gallery);
// //   setState(() {
// //     _image=image;
// //   });
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Column(
// //         children: [
// //           Container(
// //             height: 500,
// //             width: double.infinity,
// //             color: Colors.blue,
// //             child: _image==null?Center(child: Text("no image selected")):Image.file(_image),
// //
// //           ),
// //           SizedBox(height: 20,),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               FloatingActionButton(onPressed: (){CameraImage();},child: Icon(Icons.camera),),
// //               SizedBox(width: 20,),
// //               FloatingActionButton(onPressed: (){},child: Icon(Icons.photo_library),),
// //             ],
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }
// //
// // class _HomePageState extends State<HomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: RaisedButton(child:Text("Click", style: TextStyle(color: Colors.white),),color: Colors.pink ,onPressed: (){
// //           showModalBottomSheet(context: context, builder: (context){
// //             return Container(
// //
// //               child: Column(
// //                 children: [
// //                   InkWell(
// //                     onTap: (){},
// //                     child: ListTile(
// //                       title: Text("one"),
// //                       subtitle: Text("This is one"),
// //                       trailing: Icon(Icons.access_alarm),
// //                     ),
// //                   ),
// //                 ListTile(
// //                     title: Text("one"),
// //                     subtitle: Text("This is one"),
// //                     trailing: Icon(Icons.access_alarm),
// //                   ),
// //                 ListTile(
// //                     title: Text("one"),
// //                     subtitle: Text("This is one"),
// //                     trailing: Icon(Icons.access_alarm),
// //                   ),
// //                 ListTile(
// //                     title: Text("one"),
// //                     subtitle: Text("This is one"),
// //                     trailing: Icon(Icons.access_alarm),
// //                   ),
// //                 ],
// //               ),
// //             );
// //           });
// //           showDialog(context: context,builder: (context){
// //             return AlertDialog(
// //               title: Text("alert"),
// //               content: Text("this is a simple alert"),
// //               actions: [
// //                 RaisedButton(onPressed: (){Navigator.pop(context);},child: Text("Ok"),),
// //               ],
// //             );
// //           });
// //         },),
// //       ),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(

// //       bottomNavigationBar: CurvedNavigationBar(
// //         color: Colors.white,
// //         buttonBackgroundColor: Colors.white,
// //         backgroundColor: Colors.blue,
// //         animationCurve: Curves.fastOutSlowIn,
// //         animationDuration: Duration(milliseconds: 300),
// //         onTap: (index){},
// //         items: [
// //           Icon(Icons.alarm),
// //           Icon(Icons.ac_unit),
// //           Icon(Icons.accessible),
// //           Icon(Icons.add_call),
// //           Icon(Icons.favorite),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   HomePage({Key key}) : super(key: key);

// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   File image;
// //   final picker = ImagePicker();
// //   Future getImage() async {
// //     final pickedFile = await picker.getImage(source: ImageSource.camera);
// //     setState(() {
// //       if (pickedFile != null) {
// //         image = File(pickedFile.path);
// //       } else
// //         Text("no image selected");
// //     });
// //   }

// //   String _string = "naim";
// //   bool pressAttention = false;
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.pink,
// //           actions: [
// //             IconButton(
// //               icon: Icon(Icons.add),
// //               onPressed: () {
// //                 Navigator.push(
// //                     context,
// //                     MaterialPageRoute(
// //                         builder: (context) => home(
// //                               text: _string,
// //                               image: image,
// //                             )));
// //               },
// //             ),
// //           ],
// //           title: Text("AppBar"),
// //           leading: IconButton(
// //             icon: Icon(Icons.camera),
// //             onPressed: () {
// //               getImage();
// //             },
// //             tooltip: 'Camera',
// //           ),
// //         ),
// //         body: ListView(
// //           scrollDirection: Axis.vertical,
// //           children: <Widget>[
// //             Text(_string),
// //             ButtonTheme(
// //               minWidth: 200,
// //               height: 60,
// //               child: RaisedButton(
// //                 onPressed: () {
// //                   setState(() {
// //                     _string =
// //                         pressAttention == true ? "my name is naim" : "naim";
// //                     pressAttention = !pressAttention;
// //                   });
// //                 },
// //                 child: pressAttention
// //                     ? Text("Button")
// //                     : Text(
// //                         "Button",
// //                         style: TextStyle(color: Colors.white),
// //                       ),
// //                 color: pressAttention ? Colors.pink : Colors.blue,
// //               ),
// //             ),
// //             Container(
// //               height: 600,
// //               color: Colors.blueAccent,
// //               child:
// //                   image == null ? Text("no image selected") : Image.file(image),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }