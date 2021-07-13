import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sample/components/allclass.dart';
import 'package:sample/components/dashboardPages/Presentpage.dart';
import 'package:sample/components/test.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'main_drawer.dart';

class dashboard extends StatefulWidget {
  @override
  final String appBarTitle, section, uuid, first_roll;
  dashboard(
      {Key key, this.appBarTitle, this.section, this.uuid, this.first_roll})
      : super(key: key);
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final textController = TextEditingController();
  static List studentList = [],
      presentList = ['1', '1', '1', '1', '1'],
      result = [],
      presentResult = [],
      ctMarksResult = ['0', '0', '0', '0', '0', '0', '0', '0'],
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
      ],
      cycleList = [
        'Cycle-1',
        'Cycle-2',
        'Cycle-3',
        'Cycle-4',
        'Cycle-5',
        'Cycle-6',
        'Cycle-7',
        'Cycle-8',
        'Cycle-9',
        'Cycle-10',
        'Cycle-11',
        'Cycle-12',
        'Cycle-13',
        'Extra class'
      ];
  bool search = false;

  @override
  void initState() {
    makeStudentList();
    super.initState();
  }

  makeStudentList() async {
    print('make studentList called');
    int i = int.parse(widget.first_roll);
    int roll = i;
    dynamic gotresult = await getPresentSheet(roll, widget.uuid);
    dynamic gotctresult = await getCtMarksSheet(roll, widget.uuid);
    if (gotresult == null)
      print('failed to load presentList');
    else {
      print('got presentList');
      setState(() {
        presentList = presentResult = gotresult;
        ctMarksResult = gotctresult;
      });
    }

    print(widget.first_roll);
    print(i);
    print(widget.section);
    studentList.clear();
    for (int j = 0; j < 60; j++) {
      studentList.add(i.toString());
      i++;
    }

    print(studentList);

    result = studentList;
  }

  String choosenCycle = 'Cycle-1';
  int cycle = 0;

  // void filter(String value) {
  //   setState(() {
  //     if (value.isEmpty) {
  //       print('presentList is cleared');
  //       print(presentResult);
  //       studentList = result;
  //       presentList = presentResult;
  //     } else {
  //       studentList = result
  //           .where((i) =>
  //               i.toString() == value || i.toString().substring(4) == value)
  //           .toList();
  //       if (studentList.length == 1) {
  //         String temp = studentList[0];
  //         print(temp);
  //         temp = temp.substring(4);
  //         int roll = int.parse(temp);

  //         presentList[0] = presentResult[
  //             roll == 60 || roll == 120 || roll == 180 ? 59 : roll % 60 - 1];
  //       }
  //     }
  //   });
  //   print(presentResult);
  // }

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
                      hintText: 'Search 063/1803063',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Colors.grey[100],
                      filled: true,
                    ),
                    autofocus: true,
                    onChanged: (value) {
                      // filter(value);
                    },
                  )
                : Text(widget.appBarTitle),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            actions: [
              search
                  ? Text('')
                  : Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: DropdownButton(
                        items: cycleList.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                            ),
                          );
                        }).toList(),
                        value: choosenCycle,
                        onChanged: (newValue) {
                          setState(() {
                            choosenCycle = newValue;
                            if (choosenCycle == cycleList[0])
                              cycle = 0;
                            else if (choosenCycle == cycleList[1])
                              cycle = 1;
                            else if (choosenCycle == cycleList[2])
                              cycle = 2;
                            else if (choosenCycle == cycleList[3])
                              cycle = 3;
                            else if (choosenCycle == cycleList[4])
                              cycle = 4;
                            else if (choosenCycle == cycleList[5])
                              cycle = 5;
                            else if (choosenCycle == cycleList[6])
                              cycle = 6;
                            else if (choosenCycle == cycleList[7])
                              cycle = 7;
                            else if (choosenCycle == cycleList[8])
                              cycle = 8;
                            else if (choosenCycle == cycleList[9])
                              cycle = 9;
                            else if (choosenCycle == cycleList[10])
                              cycle = 10;
                            else if (choosenCycle == cycleList[11])
                              cycle = 11;
                            else if (choosenCycle == cycleList[12])
                              cycle = 12;
                            else if (choosenCycle == cycleList[13]) cycle = 13;
                          });
                        },
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                        dropdownColor: Colors.grey[700],
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 30,
                        iconDisabledColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        hint: Text(
                          'Cycle-1',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
              // search
              //     ? IconButton(
              //         icon: Icon(
              //           Icons.cancel,
              //           color: Colors.white,
              //         ),
              //         iconSize: 18,
              //         onPressed: () {
              //           setState(() {
              //             search = !search;
              //             studentList = result;
              //             presentList = presentResult;
              //             textController.text = '';
              //           });
              //         },
              //       )
              //     : IconButton(
              //         icon: Icon(
              //           FontAwesomeIcons.search,
              //           color: Colors.white,
              //         ),
              //         iconSize: 16,
              //         onPressed: () {
              //           setState(() {
              //             search = !search;
              //           });
              //         },
              //       )
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
                                  presentList: presentList[index],
                                  uuid: widget.uuid,
                                  cycle: cycle,
                                  studentRollList: presentResult);
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
                                  'CT-1',
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
                                  'CT-2',
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
                                  'CT-3',
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
                                  'CT-4',
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
                                  ctMarks: ctMarksResult[index],
                                  uuid: widget.uuid);
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
      {Key key,
      this.studentRoll,
      this.index,
      this.colorRollIndex,
      this.presentList,
      this.uuid,
      this.cycle,
      this.studentRollList})
      : super(key: key);
  String studentRoll, colorRollIndex, uuid;
  final int cycle;
  List presentList, studentRollList;

  int index;
  @override
  _EachRowofListViewState createState() => _EachRowofListViewState();
}

class _EachRowofListViewState extends State<EachRowofListView> {
  dashboard car;
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    final evenColor = '#E4D5ED', oddColor = '#ffffff';
    return Container(
      alignment: Alignment.topLeft,
      color: Colors.white,
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
                color: HexColor('#7C37A4'),
                border: Border.all(width: 0, color: HexColor("#FFFFFF"))),
          ),

// AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            child: Center(
              child: BouncingWidget(
                onPressed: () {
                  setState(() {
                    if (widget.presentList[widget.cycle * 5 + 0] == '1')
                      widget.presentList[widget.cycle * 5 + 0] = '0';
                    else
                      widget.presentList[widget.cycle * 5 + 0] = '1';
                    print(widget.index);
                  });
                  updatePresent(
                      widget.studentRoll, widget.uuid, widget.presentList);
                  int roll = int.parse(widget.studentRoll.substring(4));

                  widget.studentRollList[
                      roll == 60 || roll == 120 || roll == 180
                          ? 59
                          : roll % 60 - 1] = widget.presentList;
                },
                duration: Duration(milliseconds: 200),
                scaleFactor: 1.8,
                child: widget.presentList[widget.cycle * 5 + 0] == '0'
                    ? Text(
                        'A',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      )
                    : Text(
                        'P',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
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
              child: BouncingWidget(
                onPressed: () {
                  setState(() {
                    if (widget.presentList[widget.cycle * 5 + 1] == '1')
                      widget.presentList[widget.cycle * 5 + 1] = '0';
                    else
                      widget.presentList[widget.cycle * 5 + 1] = '1';
                    print(widget.index);
                  });
                  updatePresent(
                      widget.studentRoll, widget.uuid, widget.presentList);
                  int roll = int.parse(widget.studentRoll.substring(4));
                  widget.studentRollList[
                      roll == 60 || roll == 120 || roll == 180
                          ? 59
                          : roll % 60 - 1] = widget.presentList;
                },
                duration: Duration(milliseconds: 200),
                scaleFactor: 1.8,
                child: widget.presentList[widget.cycle * 5 + 1] == '0'
                    ? Text(
                        'A',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      )
                    : Text(
                        'P',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
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
              child: BouncingWidget(
                onPressed: () {
                  setState(() {
                    if (widget.presentList[widget.cycle * 5 + 2] == '1')
                      widget.presentList[widget.cycle * 5 + 2] = '0';
                    else
                      widget.presentList[widget.cycle * 5 + 2] = '1';
                    print(widget.index);
                  });
                  updatePresent(
                      widget.studentRoll, widget.uuid, widget.presentList);
                  int roll = int.parse(widget.studentRoll.substring(4));
                  widget.studentRollList[
                      roll == 60 || roll == 120 || roll == 180
                          ? 59
                          : roll % 60 - 1] = widget.presentList;
                },
                duration: Duration(milliseconds: 200),
                scaleFactor: 1.8,
                child: widget.presentList[widget.cycle * 5 + 2] == '0'
                    ? Text(
                        'A',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      )
                    : Text(
                        'P',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
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
              child: BouncingWidget(
                onPressed: () {
                  setState(() {
                    if (widget.presentList[widget.cycle * 5 + 3] == '1')
                      widget.presentList[widget.cycle * 5 + 3] = '0';
                    else
                      widget.presentList[widget.cycle * 5 + 3] = '1';
                    print(widget.index);
                  });
                  updatePresent(
                      widget.studentRoll, widget.uuid, widget.presentList);
                  int roll = int.parse(widget.studentRoll.substring(4));
                  widget.studentRollList[
                      roll == 60 || roll == 120 || roll == 180
                          ? 59
                          : roll % 60 - 1] = widget.presentList;
                },
                duration: Duration(milliseconds: 200),
                scaleFactor: 1.8,
                child: widget.presentList[widget.cycle * 5 + 3] == '0'
                    ? Text(
                        'A',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      )
                    : Text(
                        'P',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
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
              child: BouncingWidget(
                onPressed: () {
                  setState(() {
                    if (widget.presentList[widget.cycle * 5 + 4] == '1')
                      widget.presentList[widget.cycle * 5 + 4] = '0';
                    else
                      widget.presentList[widget.cycle * 5 + 4] = '1';
                    print(widget.index);
                  });
                  updatePresent(
                      widget.studentRoll, widget.uuid, widget.presentList);
                  int roll = int.parse(widget.studentRoll.substring(4));
                  widget.studentRollList[
                      roll == 60 || roll == 120 || roll == 180
                          ? 59
                          : roll % 60 - 1] = widget.presentList;
                },
                duration: Duration(milliseconds: 200),
                scaleFactor: 1.8,
                child: widget.presentList[widget.cycle * 5 + 4] == '0'
                    ? Text(
                        'A',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      )
                    : Text(
                        'P',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CtMarksList extends StatefulWidget {
  CtMarksList(
      {Key key,
      this.studentRoll,
      this.index,
      this.colorRollIndex,
      this.ctMarks,
      this.uuid})
      : super(key: key);
  String studentRoll, colorRollIndex, uuid;
  List ctMarks;
  int index;
  @override
  _CtMarksListState createState() => _CtMarksListState();
}

// ==============================================================================================================================================================
class _CtMarksListState extends State<CtMarksList> {
  bool open1 = false,
      open2 = false,
      open3 = false,
      open4 = false,
      open5 = false;
  final control = TextEditingController();

  @override
  bool textFieldOpener = false;
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    final evenColor = '#E4D5ED', oddColor = '#ffffff';
    FocusScopeNode currentFocus = FocusScope.of(context);

    return Container(
      alignment: Alignment.topLeft,
      color: Colors.white,
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
                color: HexColor('#7C37A4'),
                border: Border.all(width: 0, color: HexColor("#FFFFFF"))),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            child: Center(
              child: open1
                  ? Focus(
                      child: TextField(
                        autofocus: true,
                        keyboardType: TextInputType.number,
                        controller: control,
                      ),
                      onFocusChange: (hasFocus) {
                        if (!hasFocus)
                          setState(() {
                            open1 = !open1;
                            if (control.text.length >= 2) {
                              widget.ctMarks[0] = control.text[0];
                              widget.ctMarks[1] = control.text[1];
                            } else if (control.text.length == 1) {
                              widget.ctMarks[0] = '0';
                              widget.ctMarks[1] = control.text[0];
                            }
                            control.text = '';
                            updateCtMarks(widget.studentRoll, widget.uuid,
                                widget.ctMarks);
                          });
                      },
                    )
                  : GestureDetector(
                      onTap: () {
                        if (!currentFocus.hasPrimaryFocus)
                          currentFocus.unfocus();
                        setState(() {
                          open1 = !open1;
                          open2 = false;
                          open3 = false;
                          open4 = false;
                        });
                      },
                      child: Text(
                        widget.ctMarks[0] + widget.ctMarks[1],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: HexColor('#000000'),
                        ),
                      ),
                    ),
            ),
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor('#610A93'))),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
                  setState(() {
                    open2 = !open2;
                    open1 = false;
                    open3 = false;
                    open4 = false;
                  });
                },
                child: open2
                    ? Focus(
                        child: TextField(
                          autofocus: true,
                          controller: control,
                          keyboardType: TextInputType.number,
                        ),
                        onFocusChange: (hasFocus) {
                          if (!hasFocus)
                            setState(() {
                              open2 = !open2;
                              if (control.text.length >= 2) {
                                widget.ctMarks[2] = control.text[0];
                                widget.ctMarks[3] = control.text[1];
                              } else if (control.text.length == 1) {
                                widget.ctMarks[2] = '0';
                                widget.ctMarks[3] = control.text[0];
                              }
                              control.text = '';
                              updateCtMarks(widget.studentRoll, widget.uuid,
                                  widget.ctMarks);
                            });
                        },
                      )
                    : Text(
                        widget.ctMarks[2] + widget.ctMarks[3],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: HexColor('#000000'),
                        ),
                      ),
              ),
            ),
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor('#610A93'))),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
                  setState(() {
                    open3 = !open3;
                    open1 = false;
                    open2 = false;
                    open4 = false;
                  });
                },
                child: open3
                    ? Focus(
                        child: TextField(
                          autofocus: true,
                          controller: control,
                          keyboardType: TextInputType.number,
                        ),
                        onFocusChange: (hasFocus) {
                          if (!hasFocus)
                            setState(() {
                              open3 = !open3;
                              if (control.text.length >= 2) {
                                widget.ctMarks[4] = control.text[0];
                                widget.ctMarks[5] = control.text[1];
                              } else if (control.text.length == 1) {
                                widget.ctMarks[4] = '0';
                                widget.ctMarks[5] = control.text[0];
                              }
                              control.text = '';
                              updateCtMarks(widget.studentRoll, widget.uuid,
                                  widget.ctMarks);
                            });
                        },
                      )
                    : Text(
                        widget.ctMarks[4] + widget.ctMarks[5],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: HexColor('#000000'),
                        ),
                      ),
              ),
            ),
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor('#610A93'))),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
                  setState(() {
                    open4 = !open4;
                    open1 = false;
                    open2 = false;
                    open3 = false;
                  });
                },
                child: open4
                    ? Focus(
                        child: TextField(
                          autofocus: true,
                          controller: control,
                          keyboardType: TextInputType.number,
                        ),
                        onFocusChange: (hasFocus) {
                          if (!hasFocus)
                            setState(() {
                              open4 = !open4;
                              if (control.text.length >= 2) {
                                widget.ctMarks[6] = control.text[0];
                                widget.ctMarks[7] = control.text[1];
                              } else if (control.text.length == 1) {
                                widget.ctMarks[6] = '0';
                                widget.ctMarks[7] = control.text[0];
                              }
                              control.text = '';
                              updateCtMarks(widget.studentRoll, widget.uuid,
                                  widget.ctMarks);
                            });
                        },
                      )
                    : Text(
                        widget.ctMarks[6] + widget.ctMarks[7],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: HexColor('#000000'),
                        ),
                      ),
              ),
            ),
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor('#610A93'))),
          ),
          Container(
            height: mheight * .05,
            width: mwidth * .14,
            child: Center(
              child: Text(
                calculate_average(widget.ctMarks[0] +
                    widget.ctMarks[1] +
                    widget.ctMarks[2] +
                    widget.ctMarks[3] +
                    widget.ctMarks[4] +
                    widget.ctMarks[5] +
                    widget.ctMarks[6] +
                    widget.ctMarks[7]),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: HexColor('#000000'),
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
                border: Border.all(width: 0, color: HexColor('#610A93'))),
          ),

          //   Container(
          //     width: mwidth * .14,
          //     decoration: BoxDecoration(
          //         color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
          //         border: Border.all(width: 0, color: HexColor("#610A93"))),
          //     height: mheight * .05,
          //     child: Center(
          //       child: Text(
          //         '17',
          //         textAlign: TextAlign.center,
          //         style: TextStyle(fontSize: 18, color: HexColor('#000000')),
          //       ),
          //     ),
          //   ),
          //   Container(
          //     height: mheight * .05,
          //     width: mwidth * .14,
          //     decoration: BoxDecoration(
          //         color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
          //         border: Border.all(width: 0, color: HexColor("#610A93"))),
          //     child: Center(
          //       child: Text(
          //         '18',
          //         style: TextStyle(fontSize: 18, color: HexColor('#000000')),
          //       ),
          //     ),
          //   ),
          //   Container(
          //     height: mheight * .05,
          //     width: mwidth * .14,
          //     decoration: BoxDecoration(
          //         color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
          //         border: Border.all(width: 0, color: HexColor("#610A93"))),
          //     child: Center(
          //       child: Text(
          //         '20',
          //         textAlign: TextAlign.center,
          //         style: TextStyle(fontSize: 18, color: HexColor('#000000')),
          //       ),
          //     ),
          //   ),
          //   Container(
          //     height: mheight * .05,
          //     width: mwidth * .14,
          //     decoration: BoxDecoration(
          //         color: HexColor(widget.index % 2 == 0 ? evenColor : oddColor),
          //         border: Border.all(width: 0, color: HexColor("#610A93"))),
          //     child: Center(
          //       child: Text(
          //         '18',
          //         style: TextStyle(fontSize: 18, color: HexColor('#000000')),
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}

String calculate_average(String ctMarks) {
  List<int> marks = [
    int.parse(ctMarks.substring(0, 2)),
    int.parse(ctMarks.substring(2, 4)),
    int.parse(ctMarks.substring(4, 6)),
    int.parse(ctMarks.substring(6))
  ];
  marks.sort((b, a) => a.compareTo(b));
  int res = marks[0] + marks[1] + marks[2];

  res = (res / 3).ceil();
  return res.toString();
}
