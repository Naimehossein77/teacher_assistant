import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sample/components/dashboard.dart';
import 'package:sample/components/main_drawer.dart';
import 'package:sample/main.dart';
import 'package:validators/validators.dart';

// ALLCLASS WIDGET
class allclass extends StatefulWidget {
  allclass({Key key}) : super(key: key);

  @override
  _allclassState createState() => _allclassState();
}

// List<Widget> boxlist = [];

class _allclassState extends State<allclass> {
  final _formkey = GlobalKey<FormState>();
  final dept = TextEditingController();
  final series = TextEditingController();
  final section = TextEditingController();
  final subject = TextEditingController();
  Function validator;
  static List<Widget> boxlist = [];
  static int cnt = 0;
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('All classes'),
      ),
      drawer: MainDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
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
                                controller: dept,
                                decoration: InputDecoration(
                                  hintText: "ex: CSE/EEE/ME",
                                  labelText: 'Enter Dept.',
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) return 'Enter Dept';
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                controller: series,
                                decoration: InputDecoration(
                                  hintText: "ex: 18/19/20",
                                  labelText: 'Enter Series',
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) return 'Enter Series';
                                  return null;
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                controller: section,
                                decoration: InputDecoration(
                                  hintText: "ex: A/B/C",
                                  labelText: 'Enter Section',
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) return 'Enter Section';
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                controller: subject,
                                decoration: InputDecoration(
                                  hintText: "ex: C programming",
                                  labelText: 'Enter Subject',
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) return 'Enter Subject';
                                  return null;
                                },
                              ),
                            ),
                            RaisedButton(
                              onPressed: () {
                                if (_formkey.currentState.validate()) {
                                  print('null printed');
                                  Navigator.pop(context);
                                  print(boxlist);
                                  setState(() {
                                    boxlist.add(BoxList(
                                      dept: dept.text,
                                      series: series.text,
                                      section: section.text,
                                      subject: subject.text,
                                    ));
                                  });
                                  dept.text = '';
                                  series.text = '';
                                  section.text = '';
                                  subject.text = '';
                                }
                              },
                              child: Text('Create ClassRoom'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
          setState(() {
            // boxlist.add(BoxList(string: dept.text));
          });
          cnt++;
          print('$cnt');
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: boxlist.length,
          // ignore: missing_return
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(boxlist.length.toString()),
              onDismissed: (direction) {
                // Remove the item from the data source.
                setState(() {
                  boxlist.removeAt(index);
                  cnt--;
                });
              },
              child: Column(
                children: [
                  boxlist[index],
                  SizedBox(
                    height: 3,
                  )
                ],
              ), //your child here (maybe listivew)
            );
          },
        ),
      ),
    );
  }
}

// BOXLIST WIDGET
class BoxList extends StatefulWidget {
  final String dept, series, section, string, subject;
  BoxList(
      {Key key,
      this.string,
      this.dept,
      this.series,
      this.section,
      this.subject})
      : super(key: key);

  @override
  BoxListState createState() => BoxListState();
}

class BoxListState extends State<BoxList> {
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onLongPress: () {
            print('long pressed');
          },
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => dashboard()));
          },
          child: Container(
              width: mwidth * .90,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: Icon(Icons.ac_unit),
                                ),
                                Text(
                                  'Dept     :  ',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  widget.dept,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            'Series  :  ',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.series,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            'Section:  ',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.section,
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            'Subject:  ',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.subject,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white30,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
                // border: Border.all(color: Colors.black, width: 1)
              )),
        ),
      ),
    );
  }
}
