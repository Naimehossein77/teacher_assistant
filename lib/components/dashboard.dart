import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sample/SamsungGalaxyS105.dart';
import 'package:sample/components/allclass.dart';
import 'package:sample/components/dashboardPages/Presentpage.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'main_drawer.dart';

class dashboard extends StatefulWidget {
  @override
  String appBarTitle = '', section;
  dashboard({Key key, this.appBarTitle, this.section}) : super(key: key);
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final textController = TextEditingController();
  static List studentList = [],
      result = [],
      colorList = [
        '#6B1A99',
        '#6F219C',
        '#70239C',
        '#73289E',
        '#762CA0',
        '#7830A1',
        '#7C37A4',
        '#7E3AA5',
        '#8140A7',
        '#8444A9',
        '#8648AA',
        '#8A4EAC',
        '#8D53AE',
        '#8F56AF',
        '#925BB1'
      ];
  bool search = false;

  @override
  void initState() {
    makeStudentList();
    super.initState();
  }

  void makeStudentList() {
    int i = 0;
    studentList.clear();
    if (widget.section == 'A')
      i = 1803001;
    else if (widget.section == 'B')
      i = 1803061;
    else
      i = 1803121;
    for (int j = 0; j < 60; j++) {
      studentList.add(i.toString());
      i++;
    }
    result = studentList;
  }

  void filter(String value) {
    setState(() {
      if (value.isEmpty)
        studentList = result;
      else
        studentList = result
            .where((i) =>
                i.toString() == value || i.toString().substring(4) == value)
            .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
        setState(() {});
      },
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: search
                ? TextField(
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Colors.grey[100],
                      filled: true,
                    ),
                    autofocus: true,
                    onChanged: (value) {
                      filter(value);
                    },
                  )
                : Text(widget.appBarTitle),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            actions: [
              search
                  ? Text('')
                  : IconButton(
                      icon: Icon(Icons.list_alt),
                      onPressed: () {},
                    ),
              search
                  ? IconButton(
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.white,
                      ),
                      iconSize: 18,
                      onPressed: () {
                        setState(() {
                          search = !search;
                          studentList = result;
                          textController.text = '';
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(
                        FontAwesomeIcons.search,
                        color: Colors.white,
                      ),
                      iconSize: 16,
                      onPressed: () {
                        setState(() {
                          search = !search;
                        });
                      },
                    )
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicator: RectangularIndicator(
                  color: HexColor('#8B5EA5'),
                  bottomLeftRadius: 25,
                  topLeftRadius: 25,
                  topRightRadius: 25,
                  bottomRightRadius: 25,
                  paintingStyle: PaintingStyle.fill,
                  horizontalPadding: 6,
                  verticalPadding: 10),
              tabs: [
                Tab(
                  text: 'Present',
                ),
                Tab(
                  text: 'CT',
                ),
                Tab(
                  text: 'Statistics',
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: TabBarView(
              children: [
                Container(
                  height: 20,
                  alignment: Alignment.topLeft,
                  child: ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: mheight * .05,
                              width: mwidth * .299,
                              child: Center(
                                child: Text(
                                  'Roll',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: HexColor('#FFFFFF'),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: HexColor('#610A93'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: .1,
                                          color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                            ),
                            Container(
                              height: mheight * .05,
                              width: mwidth * .14,
                              child: Center(
                                child: Text(
                                  'A',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#610A93')),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: 1, color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                              // decoration: BoxDecoration(
                              //     color: HexColor('#FFFFFF'),
                              //     border: Border.all(
                              //         width: 1, color: HexColor("#610A93"))),
                            ),
                            Container(
                              width: mwidth * .14,
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: 1, color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                              height: mheight * .05,
                              child: Center(
                                child: Text(
                                  'B',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#610A93')),
                                ),
                              ),
                            ),
                            Container(
                              height: mheight * .05,
                              width: mwidth * .14,
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: 1, color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                              child: Center(
                                child: Text(
                                  'C',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#610A93')),
                                ),
                              ),
                            ),
                            Container(
                              height: mheight * .05,
                              width: mwidth * .14,
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: 1, color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                              child: Center(
                                child: Text(
                                  'D',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#610A93')),
                                ),
                              ),
                            ),
                            Container(
                              height: mheight * .05,
                              width: mwidth * .14,
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                              child: Center(
                                child: Text(
                                  'E',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#610A93')),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2),

                      // LISTBUILDER:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                      Container(
                          height: mheight * .76,
                          alignment: Alignment.topLeft,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: studentList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return EachRowofListView(
                                studentRoll: studentList[index],
                                index: index,
                                colorRollIndex:
                                    colorList[((index % 30) / 2).toInt()],
                              );
                            },
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  alignment: Alignment.topLeft,
                  child: ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: mheight * .05,
                              width: mwidth * .299,
                              child: Center(
                                child: Text(
                                  'Roll',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: HexColor('#FFFFFF'),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: HexColor('#610A93'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: .1,
                                          color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                            ),
                            Container(
                              height: mheight * .05,
                              width: mwidth * .14,
                              child: Center(
                                child: Text(
                                  'CT#1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#610A93')),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: 1, color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                              // decoration: BoxDecoration(
                              //     color: HexColor('#FFFFFF'),
                              //     border: Border.all(
                              //         width: 1, color: HexColor("#610A93"))),
                            ),
                            Container(
                              width: mwidth * .14,
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: 1, color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                              height: mheight * .05,
                              child: Center(
                                child: Text(
                                  'CT#2',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#610A93')),
                                ),
                              ),
                            ),
                            Container(
                              height: mheight * .05,
                              width: mwidth * .14,
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: 1, color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                              child: Center(
                                child: Text(
                                  'CT#3',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#610A93')),
                                ),
                              ),
                            ),
                            Container(
                              height: mheight * .05,
                              width: mwidth * .14,
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: 1, color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                              child: Center(
                                child: Text(
                                  'CT#4',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#610A93')),
                                ),
                              ),
                            ),
                            Container(
                              height: mheight * .05,
                              width: mwidth * .14,
                              decoration: BoxDecoration(
                                  color: HexColor('#FFFFFF'),
                                  border: Border(
                                      left: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      right: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      top: BorderSide(
                                          width: 0, color: HexColor("#610A93")),
                                      bottom: BorderSide(
                                        width: 0,
                                        color: HexColor("#610A93"),
                                      ))),
                              child: Center(
                                child: Text(
                                  'Avg',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#610A93')),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2),

                      // LISTBUILDER:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                      Container(
                          height: mheight * .76,
                          alignment: Alignment.topLeft,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: studentList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CtMarksList(
                                studentRoll: studentList[index],
                                index: index,
                                colorRollIndex:
                                    colorList[((index % 30) ~/ 2).toInt()],
                              );
                            },
                          ))
                    ],
                  ),
                ),
                Center(
                    child: Text('What is your name?',
                        style: TextStyle(fontSize: 20.0))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// EACH ROW CLASS==========================================================================================================================================================================
class EachRowofListView extends StatefulWidget {
  EachRowofListView(
      {Key key, this.studentRoll, this.index, this.colorRollIndex})
      : super(key: key);
  String studentRoll, colorRollIndex;
  int index;
  @override
  _EachRowofListViewState createState() => _EachRowofListViewState();
}

class _EachRowofListViewState extends State<EachRowofListView> {
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    final evenColor = '#E4D5ED', oddColor = '#ffffff';
    return Container(
      alignment: Alignment.topLeft,
      color: Colors.blue,
      width: mwidth * .80,
      child: Row(
        children: [
          Container(
            height: mheight * .05,
            width: mwidth * .2985,
            child: Center(
              child: Text(
                widget.studentRoll,
                style: TextStyle(
                    fontSize: 18,
                    color: HexColor('#FFFFFF'),
                    fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
                color: HexColor(widget.colorRollIndex),
                border: Border.all(width: 0, color: HexColor("#FFFFFF"))),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            child: Center(
              child: Text(
                'A',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: HexColor('#000000')),
              ),
            ),
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor('#610A93'))),
          ),
          Container(
            width: mwidth * .14,
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor("#610A93"))),
            height: mheight * .05,
            child: Center(
              child: Text(
                'B',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: HexColor('#000000')),
              ),
            ),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor("#610A93"))),
            child: Center(
              child: Text(
                'C',
                style: TextStyle(fontSize: 18, color: HexColor('#000000')),
              ),
            ),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor("#610A93"))),
            child: Center(
              child: Text(
                'D',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: HexColor('#000000')),
              ),
            ),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor("#610A93"))),
            child: Center(
              child: Text(
                'E',
                style: TextStyle(fontSize: 18, color: HexColor('#000000')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CtMarksList extends StatefulWidget {
  CtMarksList({Key key, this.studentRoll, this.index, this.colorRollIndex})
      : super(key: key);
  String studentRoll, colorRollIndex;
  int index;
  @override
  _CtMarksListState createState() => _CtMarksListState();
}

// ==============================================================================================================================================================
class _CtMarksListState extends State<CtMarksList> {
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    final evenColor = '#E4D5ED', oddColor = '#ffffff';
    return Container(
      alignment: Alignment.topLeft,
      color: Colors.blue,
      width: mwidth * .80,
      child: Row(
        children: [
          Container(
            height: mheight * .05,
            width: mwidth * .2985,
            child: Center(
              child: Text(
                widget.studentRoll,
                style: TextStyle(
                    fontSize: 18,
                    color: HexColor('#FFFFFF'),
                    fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
                color: HexColor(widget.colorRollIndex),
                border: Border.all(width: 0, color: HexColor("#FFFFFF"))),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  print('tapped');
                },
                child: Text(
                  'A',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: HexColor('#000000')),
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor('#610A93'))),
          ),
          Container(
            width: mwidth * .14,
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor("#610A93"))),
            height: mheight * .05,
            child: Center(
              child: Text(
                'B',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: HexColor('#000000')),
              ),
            ),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor("#610A93"))),
            child: Center(
              child: Text(
                'C',
                style: TextStyle(fontSize: 18, color: HexColor('#000000')),
              ),
            ),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor("#610A93"))),
            child: Center(
              child: Text(
                'D',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: HexColor('#000000')),
              ),
            ),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor("#610A93"))),
            child: Center(
              child: Text(
                'E',
                style: TextStyle(fontSize: 18, color: HexColor('#000000')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
