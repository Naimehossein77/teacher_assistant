import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SamsungGalaxyS107 extends StatelessWidget {
  SamsungGalaxyS107({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 39.0, start: 88.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff610a93),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 288.0, start: 10.0),
                  Pin(size: 21.0, middle: 0.5),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 97.0, start: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19.0),
                            color: const Color(0xff861cc4),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 73.0, start: 12.0),
                        Pin(start: 1.0, end: 1.0),
                        child: Text(
                          'Attendance',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 14.0, middle: 0.4343),
                        Pin(start: 1.0, end: 1.0),
                        child: Text(
                          'Ct',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 23.0, middle: 0.634),
                        Pin(start: 1.0, end: 1.0),
                        child: Text(
                          'Lab',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 62.0, end: 0.0),
                        Pin(start: 1.0, end: 1.0),
                        child: Text(
                          'Stastistics',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 476.0, end: 3.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xd6b3c5e7)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 251.0, end: 1.0),
            Pin(size: 26.0, middle: 0.2638),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffe4d5ed),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 251.0, end: 1.0),
            Pin(size: 420.0, end: 2.0),
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 30,
                children: [{}, {}, {}, {}, {}, {}, {}].map((itemData) {
                  return SizedBox(
                    width: 252.0,
                    height: 30.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0x2b610a93),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 90.0, start: 0.0),
            child:
                // Adobe XD layer: '#1' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Tool bar' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 10.0),
                        child:
                            // Adobe XD layer: 'Tool bar bg' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Tool bar bg' (shape)
                                  SvgPicture.string(
                                _svg_26etxl,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Tool bar bg' (shape)
                                  SvgPicture.string(
                                _svg_6ir2sz,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 24.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Tool bar contents' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 10.0),
                              child:
                                  // Adobe XD layer: 'Bounds' (shape)
                                  SvgPicture.string(
                                _svg_60u6c,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 24.0, end: 21.0),
                              Pin(size: 24.0, middle: 0.381),
                              child:
                                  // Adobe XD layer: 'Search Icon' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'Bounds' (shape)
                                        SvgPicture.string(
                                      _svg_enga4p,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 3.0, end: 3.5),
                                    Pin(start: 3.0, end: 3.5),
                                    child:
                                        // Adobe XD layer: 'Icon' (shape)
                                        SvgPicture.string(
                                      _svg_unhxek,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 97.0, middle: 0.2738),
                              Pin(size: 52.0, end: 0.0),
                              child: Text(
                                'Dashboard\n',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 24.0, start: 16.0),
                              Pin(size: 24.0, middle: 0.3571),
                              child:
                                  // Adobe XD layer: 'Burger Button' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'Bounds' (shape)
                                        Container(
                                      decoration: BoxDecoration(),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 3.0, end: 3.0),
                                    Pin(size: 12.0, middle: 0.5),
                                    child:
                                        // Adobe XD layer: 'Icon' (shape)
                                        SvgPicture.string(
                                      _svg_54usib,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 24.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'Status bar' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Status bar bg' (shape)
                            Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff4e0c74),
                          ),
                        ),
                      ),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 105.0, start: 0.0),
            Pin(size: 509.0, end: 3.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff610a93),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29fdf4f4),
                                offset: Offset(0, 5),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 34.0, middle: 0.507),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          'ROLL',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, start: 30.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff6b1a99),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803163',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, start: 60.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff6f219c),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803164',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.1875),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff70239c),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803165',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.25),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff73289e),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803166',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.3125),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff762ca0),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803167',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.375),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff7830a1),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803168',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.4375),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff7c37a4),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803169',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.5),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff7e3aa5),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803170',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.5625),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff8140a7),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803171',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.625),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff8444a9),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803172',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.6875),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff8648aa),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803173',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.75),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff8a4eac),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803174',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, middle: 0.8125),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff8d53ae),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803175',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, end: 60.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff8f56af),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803176',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, end: 30.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff925bb1),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803177',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 29.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff9662b3),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 56.0, middle: 0.5102),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          '1803178',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 52.0, middle: 0.3409),
            Pin(size: 29.0, middle: 0.2095),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xd9610a93)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 9.0, middle: 0.4884),
                  Pin(size: 19.0, middle: 0.5),
                  child: Text(
                    'A',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 14,
                      color: const Color(0xff610a93),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 52.0, middle: 0.5065),
            Pin(size: 29.0, middle: 0.2095),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xd9610a93)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 8.0, middle: 0.4773),
                  Pin(size: 19.0, middle: 0.5),
                  child: Text(
                    'B',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 14,
                      color: const Color(0xff610a93),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 52.0, middle: 0.6721),
            Pin(size: 29.0, middle: 0.2095),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xd9610a93)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 9.0, middle: 0.4884),
                  Pin(size: 19.0, middle: 0.5),
                  child: Text(
                    'C',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 14,
                      color: const Color(0xff610a93),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 53.0, end: 49.0),
            Pin(size: 29.0, middle: 0.2095),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xd9610a93)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 10.0, middle: 0.4884),
                  Pin(size: 19.0, middle: 0.5),
                  child: Text(
                    'D',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 14,
                      color: const Color(0xff610a93),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 50.0, end: 1.0),
            Pin(size: 29.0, middle: 0.2095),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xd9610a93)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 7.0, middle: 0.4651),
                  Pin(size: 19.0, middle: 0.5),
                  child: Text(
                    'E',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 14,
                      color: const Color(0xff610a93),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 19.0, end: 12.0),
            Pin(size: 19.0, start: 98.0),
            child:
                // Adobe XD layer: 'Icon ionic-ios-list…' (shape)
                SvgPicture.string(
              _svg_rwej2s,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.2934),
            child: SvgPicture.string(
              _svg_n2wkam,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.3404),
            child: SvgPicture.string(
              _svg_m4aytu,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.3873),
            child: SvgPicture.string(
              _svg_3rxjv0,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.4343),
            child: SvgPicture.string(
              _svg_ekfv3u,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.4812),
            child: SvgPicture.string(
              _svg_umro0m,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.5282),
            child: SvgPicture.string(
              _svg_cae91s,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.5751),
            child: SvgPicture.string(
              _svg_61z5x2,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.6221),
            child: SvgPicture.string(
              _svg_oeckvw,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.669),
            child: SvgPicture.string(
              _svg_ksuy8k,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.716),
            child: SvgPicture.string(
              _svg_2ghj9q,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, middle: 0.7629),
            child: SvgPicture.string(
              _svg_fvvvp4,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, end: 121.5),
            child: SvgPicture.string(
              _svg_tbbnfc,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, end: 91.5),
            child: SvgPicture.string(
              _svg_ayy8gi,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, end: 61.5),
            child: SvgPicture.string(
              _svg_7df6ic,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 253.0, end: 0.0),
            Pin(size: 1.0, end: 31.5),
            child: SvgPicture.string(
              _svg_x7bpd0,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.4331),
            Pin(size: 476.0, end: 2.5),
            child: SvgPicture.string(
              _svg_4x5q12,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.5752),
            Pin(size: 476.0, end: 2.5),
            child: SvgPicture.string(
              _svg_4zoud6,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.7173),
            Pin(size: 476.0, end: 2.5),
            child: SvgPicture.string(
              _svg_x2wrpi,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, end: 50.5),
            Pin(size: 476.0, end: 2.5),
            child: SvgPicture.string(
              _svg_n627ba,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 58.0, middle: 0.4172),
            Pin(size: 462.0, end: 16.0),
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 41,
                children: [{}, {}, {}, {}, {}, {}, {}, {}].map((itemData) {
                  return SizedBox(
                    width: 58.0,
                    height: 19.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 9.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Text(
                            'A',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              color: const Color(0xfff10817),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 8.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Text(
                            'P',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              color: const Color(0xff000000),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 61.0, middle: 0.4214),
            Pin(size: 434.0, end: 13.0),
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 41,
                children: [{}, {}, {}, {}, {}, {}, {}, {}].map((itemData) {
                  return SizedBox(
                    width: 60.0,
                    height: 19.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 8.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Text(
                            'P',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              color: const Color(0xff000000),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 9.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Text(
                            'A',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              color: const Color(0xfff10817),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(size: 184.0, end: 20.0),
            Pin(size: 357.0, middle: 0.5159),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x38610a93),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 58.0, middle: 0.254),
                  Pin(size: 20.0, start: 21.0),
                  child: Text(
                    '1st Cycle',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 15,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 37.0, middle: 0.3031),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0x24635f65),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 58.0, middle: 0.254),
                  Pin(size: 20.0, middle: 0.1869),
                  child: Text(
                    '1st Cycle',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 15,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 58.0, middle: 0.254),
                  Pin(size: 20.0, middle: 0.3175),
                  child: Text(
                    '1st Cycle',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 15,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 58.0, middle: 0.254),
                  Pin(size: 20.0, middle: 0.4362),
                  child: Text(
                    '1st Cycle',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 15,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 58.0, middle: 0.254),
                  Pin(size: 20.0, middle: 0.5608),
                  child: Text(
                    '1st Cycle',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 15,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 58.0, middle: 0.254),
                  Pin(size: 20.0, middle: 0.6855),
                  child: Text(
                    '1st Cycle',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 15,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 58.0, middle: 0.254),
                  Pin(size: 20.0, middle: 0.8101),
                  child: Text(
                    '1st Cycle',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 15,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 58.0, middle: 0.254),
                  Pin(size: 20.0, end: 22.0),
                  child: Text(
                    '1st Cycle',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 15,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.4, end: 11.6),
                  Pin(size: 17.6, middle: 0.3182),
                  child:
                      // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                      SvgPicture.string(
                    _svg_nt4nqd,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_26etxl =
    '<svg viewBox="0.0 0.0 360.0 80.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="4"/></filter></defs><path  d="M 360 0 L 0 0 L 0 80 L 360 80 L 360 0 Z" fill="#610a93" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_6ir2sz =
    '<svg viewBox="0.0 0.0 360.0 80.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="4"/></filter></defs><path  d="M 360 0 L 0 0 L 0 80 L 360 80 L 360 0 Z" fill="#610a93" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_enga4p =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 24 24 L 0 24 L 0 0 L 24 0 L 24 24 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_unhxek =
    '<svg viewBox="3.0 3.0 17.5 17.5" ><path  d="M 15.5 14 L 14.69999980926514 14 L 14.39999961853027 13.69999980926514 C 15.39999961853027 12.59999942779541 16 11.10000038146973 16 9.5 C 16 5.900000095367432 13.10000038146973 3 9.5 3 C 5.899999618530273 3 3 5.900000095367432 3 9.5 C 3 13.10000038146973 5.900000095367432 16 9.5 16 C 11.10000038146973 16 12.60000038146973 15.39999961853027 13.69999980926514 14.39999961853027 L 14 14.69999980926514 L 14 15.5 L 19 20.5 L 20.5 19 L 15.5 14 L 15.5 14 Z M 9.5 14 C 7 14 5 12 5 9.5 C 5 7 7 5 9.5 5 C 12 5 14 7 14 9.5 C 14 12 12 14 9.5 14 L 9.5 14 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_60u6c =
    '<svg viewBox="-16.0 -16.0 360.0 56.0" ><path transform="translate(-16.0, -16.0)" d="M 360 0 L 0 0 L 0 56 L 360 56 L 360 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_54usib =
    '<svg viewBox="3.0 6.0 18.0 12.0" ><path  d="M 3 18 L 21 18 L 21 16 L 3 16 L 3 18 L 3 18 Z M 3 13 L 21 13 L 21 11 L 3 11 L 3 13 L 3 13 Z M 3 6 L 3 8 L 21 8 L 21 6 L 3 6 L 3 6 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rwej2s =
    '<svg viewBox="329.0 98.0 19.0 19.0" ><path transform="translate(325.63, 94.63)" d="M 3.375000238418579 4.959474563598633 L 3.375000238418579 20.79052543640137 C 3.375000238418579 21.66267013549805 4.082763195037842 22.375 4.959475040435791 22.375 L 20.79052734375 22.375 C 21.66267013549805 22.375 22.375 21.667236328125 22.375 20.79052352905273 L 22.375 4.959474563598633 C 22.375 4.087328910827637 21.66723823547363 3.375 20.79052352905273 3.375 L 4.959475040435791 3.375 C 4.082763195037842 3.375 3.375000238418579 4.082762718200684 3.375000238418579 4.959474563598633 Z M 7.45262622833252 18.52568435668945 C 6.854452133178711 18.60330963134766 6.352169036865234 18.10102653503418 6.429794788360596 17.50285339355469 C 6.480023384094238 17.09646034240723 6.808790683746338 16.7676944732666 7.215183258056641 16.71746444702148 C 7.813357830047607 16.63983726501465 8.315640449523926 17.14212226867676 8.238014221191406 17.74029731750488 C 8.187787055969238 18.14668846130371 7.859019756317139 18.47545623779297 7.45262622833252 18.52568435668945 Z M 7.45262622833252 13.77682781219482 C 6.854452133178711 13.85445308685303 6.352169036865234 13.35216999053955 6.429794788360596 12.75399589538574 C 6.480023384094238 12.34760284423828 6.808790683746338 12.01883602142334 7.215183258056641 11.96860694885254 C 7.813357830047607 11.89098072052002 8.315640449523926 12.39326477050781 8.238014221191406 12.99143886566162 C 8.187787055969238 13.39783191680908 7.859019756317139 13.72659969329834 7.45262622833252 13.77682781219482 Z M 7.45262622833252 9.027968406677246 C 6.854452133178711 9.105594635009766 6.352169036865234 8.603311538696289 6.429794788360596 8.005138397216797 C 6.480023384094238 7.598744869232178 6.808790683746338 7.269976615905762 7.215183258056641 7.219748020172119 C 7.813357830047607 7.142122745513916 8.315640449523926 7.644405841827393 8.238014221191406 8.242580413818359 C 8.187787055969238 8.64897346496582 7.859019756317139 8.977740287780762 7.45262622833252 9.027968406677246 Z M 18.74942970275879 18.26084327697754 L 10.53025245666504 18.26084327697754 C 10.17865371704102 18.26084327697754 9.890982627868652 17.97317314147949 9.890982627868652 17.6215763092041 L 9.890982627868652 17.6215763092041 C 9.890982627868652 17.26997756958008 10.17865371704102 16.98230743408203 10.53025245666504 16.98230743408203 L 18.74942970275879 16.98230743408203 C 19.10102844238281 16.98230743408203 19.38869857788086 17.26997756958008 19.38869857788086 17.6215763092041 L 19.38869857788086 17.6215763092041 C 19.38869857788086 17.97317314147949 19.10102844238281 18.26084327697754 18.74942970275879 18.26084327697754 Z M 18.74942970275879 13.51198673248291 L 10.53025245666504 13.51198673248291 C 10.17865371704102 13.51198673248291 9.890982627868652 13.22431659698486 9.890982627868652 12.87271785736084 L 9.890982627868652 12.87271785736084 C 9.890982627868652 12.52112007141113 10.17865371704102 12.23344898223877 10.53025245666504 12.23344898223877 L 18.74942970275879 12.23344898223877 C 19.10102844238281 12.23344898223877 19.38869857788086 12.52112007141113 19.38869857788086 12.87271785736084 L 19.38869857788086 12.87271785736084 C 19.38869857788086 13.22431659698486 19.10102844238281 13.51198673248291 18.74942970275879 13.51198673248291 Z M 18.74942970275879 8.763129234313965 L 10.53025245666504 8.763129234313965 C 10.17865371704102 8.763129234313965 9.890982627868652 8.475458145141602 9.890982627868652 8.123859405517578 L 9.890982627868652 8.123859405517578 C 9.890982627868652 7.772260189056396 10.17865371704102 7.484589099884033 10.53025245666504 7.484589099884033 L 18.74942970275879 7.484589099884033 C 19.10102844238281 7.484589099884033 19.38869857788086 7.772260189056396 19.38869857788086 8.123859405517578 L 19.38869857788086 8.123859405517578 C 19.38869857788086 8.475458145141602 19.10102844238281 8.763129234313965 18.74942970275879 8.763129234313965 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n2wkam =
    '<svg viewBox="107.0 187.5 253.0 1.0" ><path transform="translate(107.0, 187.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m4aytu =
    '<svg viewBox="107.0 217.5 253.0 1.0" ><path transform="translate(107.0, 217.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3rxjv0 =
    '<svg viewBox="107.0 247.5 253.0 1.0" ><path transform="translate(107.0, 247.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ekfv3u =
    '<svg viewBox="107.0 277.5 253.0 1.0" ><path transform="translate(107.0, 277.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_umro0m =
    '<svg viewBox="107.0 307.5 253.0 1.0" ><path transform="translate(107.0, 307.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cae91s =
    '<svg viewBox="107.0 337.5 253.0 1.0" ><path transform="translate(107.0, 337.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_61z5x2 =
    '<svg viewBox="107.0 367.5 253.0 1.0" ><path transform="translate(107.0, 367.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oeckvw =
    '<svg viewBox="107.0 397.5 253.0 1.0" ><path transform="translate(107.0, 397.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ksuy8k =
    '<svg viewBox="107.0 427.5 253.0 1.0" ><path transform="translate(107.0, 427.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2ghj9q =
    '<svg viewBox="107.0 457.5 253.0 1.0" ><path transform="translate(107.0, 457.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fvvvp4 =
    '<svg viewBox="107.0 487.5 253.0 1.0" ><path transform="translate(107.0, 487.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tbbnfc =
    '<svg viewBox="107.0 517.5 253.0 1.0" ><path transform="translate(107.0, 517.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ayy8gi =
    '<svg viewBox="107.0 547.5 253.0 1.0" ><path transform="translate(107.0, 547.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7df6ic =
    '<svg viewBox="107.0 577.5 253.0 1.0" ><path transform="translate(107.0, 577.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x7bpd0 =
    '<svg viewBox="107.0 607.5 253.0 1.0" ><path transform="translate(107.0, 607.5)" d="M 0 0 L 253 0" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4x5q12 =
    '<svg viewBox="155.5 161.5 1.0 476.0" ><path transform="translate(155.5, 161.5)" d="M 0 0 L 0 476" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4zoud6 =
    '<svg viewBox="206.5 161.5 1.0 476.0" ><path transform="translate(206.5, 161.5)" d="M 0 0 L 0 476" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x2wrpi =
    '<svg viewBox="257.5 161.5 1.0 476.0" ><path transform="translate(257.5, 161.5)" d="M 0 0 L 0 476" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n627ba =
    '<svg viewBox="308.5 161.5 1.0 476.0" ><path transform="translate(308.5, 161.5)" d="M 0 0 L 0 476" fill="none" stroke="#610a93" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nt4nqd =
    '<svg viewBox="342.0 179.0 17.4 17.6" ><path transform="translate(338.63, 175.63)" d="M 3.375 12.15509605407715 C 3.375 17.00525283813477 7.260103702545166 20.93519020080566 12.05493354797363 20.93519020080566 C 16.84976005554199 20.93519020080566 20.73486328125 17.00525283813477 20.73486328125 12.15509605407715 C 20.73486328125 7.304936408996582 16.84976005554199 3.375000238418579 12.05493354797363 3.375000238418579 C 7.260103702545166 3.375000238418579 3.375 7.304937362670898 3.375 12.15509605407715 Z M 13.57809257507324 12.15509605407715 L 10.16036987304688 8.73170280456543 C 9.847391128540039 8.41511344909668 9.847391128540039 7.895905017852783 10.16036987304688 7.579314708709717 C 10.47334861755371 7.262724876403809 10.98663330078125 7.262724876403809 11.29961204528809 7.579314708709717 L 15.28069686889648 11.61900424957275 C 15.58532905578613 11.92715167999268 15.59367561340332 12.42525291442871 15.30573463439941 12.74184226989746 L 11.38307189941406 16.72243118286133 C 11.22449684143066 16.88283729553223 11.02001762390137 16.96303939819336 10.81136512756348 16.96303939819336 C 10.60688591003418 16.96303939819336 10.39823532104492 16.88283729553223 10.24383163452148 16.72665405273438 C 9.930852890014648 16.41006469726562 9.926679611206055 15.8950777053833 10.24383163452148 15.57426738739014 L 13.57809257507324 12.15509605407715 Z" fill="#635f65" fill-opacity="0.47" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
