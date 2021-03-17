import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SamsungGalaxyS108 extends StatelessWidget {
  SamsungGalaxyS108({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0, 88.0),
            child: SizedBox(
              width: 360.0,
              height: 39.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 39.0),
                    size: Size(360.0, 39.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff00005c),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 9.0, 288.0, 21.0),
                    size: Size(360.0, 39.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 97.0, 21.0),
                          size: Size(288.0, 21.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19.0),
                              color: const Color(0xc93131af),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.0, 1.0, 73.0, 19.0),
                          size: Size(288.0, 21.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(119.0, 1.0, 14.0, 19.0),
                          size: Size(288.0, 21.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(168.0, 1.0, 23.0, 19.0),
                          size: Size(288.0, 21.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(226.0, 1.0, 62.0, 19.0),
                          size: Size(288.0, 21.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
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
          ),
          Transform.translate(
            offset: Offset(107.0, 161.0),
            child: Container(
              width: 253.0,
              height: 476.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xd6b3c5e7)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(108.0, 162.0),
            child: Container(
              width: 251.0,
              height: 26.0,
              decoration: BoxDecoration(
                color: const Color(0x2600005c),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(108.0, 218.0),
            child: SizedBox(
              width: 251.0,
              height: 420.0,
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 30,
                  children: [{}, {}, {}, {}, {}, {}, {}].map((map) {
                    return SizedBox(
                      width: 252.0,
                      height: 30.0,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: 252.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: const Color(0x2400005c),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          // Adobe XD layer: '#1' (group)
          SizedBox(
            width: 360.0,
            height: 90.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 90.0),
                  size: Size(360.0, 90.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'Tool bar' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 80.0),
                        size: Size(360.0, 90.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Tool bar bg' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 80.0),
                              size: Size(360.0, 80.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'Tool bar bg' (shape)
                                  SvgPicture.string(
                                _svg_s06vov,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 80.0),
                              size: Size(360.0, 80.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'Tool bar bg' (shape)
                                  SvgPicture.string(
                                _svg_ybr9jp,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 24.0, 360.0, 66.0),
                        size: Size(360.0, 90.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Tool bar contents' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 56.0),
                              size: Size(360.0, 66.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'Bounds' (shape)
                                  SvgPicture.string(
                                _svg_60u6c,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(315.0, 16.0, 24.0, 24.0),
                              size: Size(360.0, 66.0),
                              pinRight: true,
                              fixedWidth: true,
                              fixedHeight: true,
                              child:
                                  // Adobe XD layer: 'Search Icon' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                                    size: Size(24.0, 24.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child:
                                        // Adobe XD layer: 'Bounds' (shape)
                                        SvgPicture.string(
                                      _svg_enga4p,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(3.0, 3.0, 17.5, 17.5),
                                    size: Size(24.0, 24.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
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
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(72.0, 14.0, 97.0, 52.0),
                              size: Size(360.0, 66.0),
                              pinBottom: true,
                              fixedWidth: true,
                              fixedHeight: true,
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
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(16.0, 15.0, 24.0, 24.0),
                              size: Size(360.0, 66.0),
                              pinLeft: true,
                              fixedWidth: true,
                              fixedHeight: true,
                              child:
                                  // Adobe XD layer: 'Burger Button' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                                    size: Size(24.0, 24.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child:
                                        // Adobe XD layer: 'Bounds' (shape)
                                        Container(
                                      decoration: BoxDecoration(),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(3.0, 6.0, 18.0, 12.0),
                                    size: Size(24.0, 24.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    fixedHeight: true,
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
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 24.0),
                  size: Size(360.0, 90.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Status bar' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 24.0),
                        size: Size(360.0, 24.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Status bar bg' (shape)
                            Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff03034d),
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
          Transform.translate(
            offset: Offset(0.0, 128.0),
            child: SizedBox(
              width: 105.0,
              height: 509.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff00005c),
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(36.0, 5.0, 34.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 30.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff02045e),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 60.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff050a62),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 90.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff081165),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 120.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff0b1769),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 150.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff0e1e6c),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 180.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff112470),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 210.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff142a73),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 240.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff183277),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 270.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff1a3679),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 300.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff1e3c7c),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 330.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff214280),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 360.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff244883),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 390.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff274d86),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 420.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff295188),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 450.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff2d588c),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 480.0, 105.0, 29.0),
                    size: Size(105.0, 509.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 29.0),
                          size: Size(105.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff305d8e),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 5.0, 56.0, 19.0),
                          size: Size(105.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
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
          ),
          Transform.translate(
            offset: Offset(105.0, 128.0),
            child: SizedBox(
              width: 52.0,
              height: 29.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 52.0, 29.0),
                    size: Size(52.0, 29.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xd600005c)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 5.0, 9.0, 19.0),
                    size: Size(52.0, 29.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'A',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 14,
                        color: const Color(0xff00005c),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(156.0, 128.0),
            child: SizedBox(
              width: 52.0,
              height: 29.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 52.0, 29.0),
                    size: Size(52.0, 29.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xd600005c)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 5.0, 8.0, 19.0),
                    size: Size(52.0, 29.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'B',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 14,
                        color: const Color(0xff00005c),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(207.0, 128.0),
            child: SizedBox(
              width: 52.0,
              height: 29.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 52.0, 29.0),
                    size: Size(52.0, 29.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xd600005c)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 5.0, 9.0, 19.0),
                    size: Size(52.0, 29.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'C',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 14,
                        color: const Color(0xff00005c),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(258.0, 128.0),
            child: SizedBox(
              width: 53.0,
              height: 29.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 53.0, 29.0),
                    size: Size(53.0, 29.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xd600005c)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 5.0, 10.0, 19.0),
                    size: Size(53.0, 29.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'D',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 14,
                        color: const Color(0xff00005c),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(309.0, 128.0),
            child: SizedBox(
              width: 50.0,
              height: 29.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 50.0, 29.0),
                    size: Size(50.0, 29.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xd600005c)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(20.0, 5.0, 7.0, 19.0),
                    size: Size(50.0, 29.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'E',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 14,
                        color: const Color(0xff00005c),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(107.0, 98.0),
            child: SvgPicture.string(
              _svg_g1c87a,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(126.0, 162.0),
            child: SizedBox(
              width: 58.0,
              height: 462.0,
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 41,
                  children: [{}, {}, {}, {}, {}, {}, {}, {}].map((map) {
                    return SizedBox(
                      width: 58.0,
                      height: 19.0,
                      child: Stack(
                        children: <Widget>[
                          Text(
                            'A',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              color: const Color(0xfff10817),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Transform.translate(
                            offset: Offset(50.0, 0.0),
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
          ),
          Transform.translate(
            offset: Offset(126.0, 193.0),
            child: SizedBox(
              width: 61.0,
              height: 434.0,
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 41,
                  children: [{}, {}, {}, {}, {}, {}, {}, {}].map((map) {
                    return SizedBox(
                      width: 60.0,
                      height: 19.0,
                      child: Stack(
                        children: <Widget>[
                          Text(
                            'P',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 14,
                              color: const Color(0xff000000),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Transform.translate(
                            offset: Offset(51.0, 0.0),
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
          ),
        ],
      ),
    );
  }
}

const String _svg_s06vov =
    '<svg viewBox="0.0 0.0 360.0 80.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="4"/></filter></defs><path  d="M 360 0 L 0 0 L 0 80 L 360 80 L 360 0 Z" fill="#00005c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ybr9jp =
    '<svg viewBox="0.0 0.0 360.0 80.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="4"/></filter></defs><path  d="M 360 0 L 0 0 L 0 80 L 360 80 L 360 0 Z" fill="#00005c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_enga4p =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 24 24 L 0 24 L 0 0 L 24 0 L 24 24 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_unhxek =
    '<svg viewBox="3.0 3.0 17.5 17.5" ><path  d="M 15.5 14 L 14.69999980926514 14 L 14.39999961853027 13.69999980926514 C 15.39999961853027 12.59999942779541 16 11.10000038146973 16 9.5 C 16 5.900000095367432 13.10000038146973 3 9.5 3 C 5.899999618530273 3 3 5.900000095367432 3 9.5 C 3 13.10000038146973 5.900000095367432 16 9.5 16 C 11.10000038146973 16 12.60000038146973 15.39999961853027 13.69999980926514 14.39999961853027 L 14 14.69999980926514 L 14 15.5 L 19 20.5 L 20.5 19 L 15.5 14 L 15.5 14 Z M 9.5 14 C 7 14 5 12 5 9.5 C 5 7 7 5 9.5 5 C 12 5 14 7 14 9.5 C 14 12 12 14 9.5 14 L 9.5 14 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_60u6c =
    '<svg viewBox="-16.0 -16.0 360.0 56.0" ><path transform="translate(-16.0, -16.0)" d="M 360 0 L 0 0 L 0 56 L 360 56 L 360 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_54usib =
    '<svg viewBox="3.0 6.0 18.0 12.0" ><path  d="M 3 18 L 21 18 L 21 16 L 3 16 L 3 18 L 3 18 Z M 3 13 L 21 13 L 21 11 L 3 11 L 3 13 L 3 13 Z M 3 6 L 3 8 L 21 8 L 21 6 L 3 6 L 3 6 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g1c87a =
    '<svg viewBox="107.0 98.0 253.0 539.5" ><path transform="translate(325.63, 94.63)" d="M 3.375000238418579 4.959474563598633 L 3.375000238418579 20.79052543640137 C 3.375000238418579 21.66267013549805 4.082763195037842 22.375 4.959475040435791 22.375 L 20.79052734375 22.375 C 21.66267013549805 22.375 22.375 21.667236328125 22.375 20.79052352905273 L 22.375 4.959474563598633 C 22.375 4.087328910827637 21.66723823547363 3.375 20.79052352905273 3.375 L 4.959475040435791 3.375 C 4.082763195037842 3.375 3.375000238418579 4.082762718200684 3.375000238418579 4.959474563598633 Z M 7.45262622833252 18.52568435668945 C 6.854452133178711 18.60330963134766 6.352169036865234 18.10102653503418 6.429794788360596 17.50285339355469 C 6.480023384094238 17.09646034240723 6.808790683746338 16.7676944732666 7.215183258056641 16.71746444702148 C 7.813357830047607 16.63983726501465 8.315640449523926 17.14212226867676 8.238014221191406 17.74029731750488 C 8.187787055969238 18.14668846130371 7.859019756317139 18.47545623779297 7.45262622833252 18.52568435668945 Z M 7.45262622833252 13.77682781219482 C 6.854452133178711 13.85445308685303 6.352169036865234 13.35216999053955 6.429794788360596 12.75399589538574 C 6.480023384094238 12.34760284423828 6.808790683746338 12.01883602142334 7.215183258056641 11.96860694885254 C 7.813357830047607 11.89098072052002 8.315640449523926 12.39326477050781 8.238014221191406 12.99143886566162 C 8.187787055969238 13.39783191680908 7.859019756317139 13.72659969329834 7.45262622833252 13.77682781219482 Z M 7.45262622833252 9.027968406677246 C 6.854452133178711 9.105594635009766 6.352169036865234 8.603311538696289 6.429794788360596 8.005138397216797 C 6.480023384094238 7.598744869232178 6.808790683746338 7.269976615905762 7.215183258056641 7.219748020172119 C 7.813357830047607 7.142122745513916 8.315640449523926 7.644405841827393 8.238014221191406 8.242580413818359 C 8.187787055969238 8.64897346496582 7.859019756317139 8.977740287780762 7.45262622833252 9.027968406677246 Z M 18.74942970275879 18.26084327697754 L 10.53025245666504 18.26084327697754 C 10.17865371704102 18.26084327697754 9.890982627868652 17.97317314147949 9.890982627868652 17.6215763092041 L 9.890982627868652 17.6215763092041 C 9.890982627868652 17.26997756958008 10.17865371704102 16.98230743408203 10.53025245666504 16.98230743408203 L 18.74942970275879 16.98230743408203 C 19.10102844238281 16.98230743408203 19.38869857788086 17.26997756958008 19.38869857788086 17.6215763092041 L 19.38869857788086 17.6215763092041 C 19.38869857788086 17.97317314147949 19.10102844238281 18.26084327697754 18.74942970275879 18.26084327697754 Z M 18.74942970275879 13.51198673248291 L 10.53025245666504 13.51198673248291 C 10.17865371704102 13.51198673248291 9.890982627868652 13.22431659698486 9.890982627868652 12.87271785736084 L 9.890982627868652 12.87271785736084 C 9.890982627868652 12.52112007141113 10.17865371704102 12.23344898223877 10.53025245666504 12.23344898223877 L 18.74942970275879 12.23344898223877 C 19.10102844238281 12.23344898223877 19.38869857788086 12.52112007141113 19.38869857788086 12.87271785736084 L 19.38869857788086 12.87271785736084 C 19.38869857788086 13.22431659698486 19.10102844238281 13.51198673248291 18.74942970275879 13.51198673248291 Z M 18.74942970275879 8.763129234313965 L 10.53025245666504 8.763129234313965 C 10.17865371704102 8.763129234313965 9.890982627868652 8.475458145141602 9.890982627868652 8.123859405517578 L 9.890982627868652 8.123859405517578 C 9.890982627868652 7.772260189056396 10.17865371704102 7.484589099884033 10.53025245666504 7.484589099884033 L 18.74942970275879 7.484589099884033 C 19.10102844238281 7.484589099884033 19.38869857788086 7.772260189056396 19.38869857788086 8.123859405517578 L 19.38869857788086 8.123859405517578 C 19.38869857788086 8.475458145141602 19.10102844238281 8.763129234313965 18.74942970275879 8.763129234313965 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 187.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 217.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 247.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 277.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 307.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 337.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 367.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 397.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 427.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 457.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 487.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 517.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 547.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 577.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(107.0, 607.5)" d="M 0 0 L 253 0" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(155.5, 161.5)" d="M 0 0 L 0 476" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(206.5, 161.5)" d="M 0 0 L 0 476" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(257.5, 161.5)" d="M 0 0 L 0 476" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(308.5, 161.5)" d="M 0 0 L 0 476" fill="none" stroke="#00005c" stroke-width="1" stroke-opacity="0.22" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
