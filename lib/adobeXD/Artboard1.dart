import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Artboard1 extends StatelessWidget {
  Artboard1({
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
            Pin(size: 80.0, start: 0.0),
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
                        Pin(start: 0.0, end: 0.0),
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
                              Pin(start: 0.0, end: 0.0),
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
                              Pin(size: 24.0, middle: 0.5),
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
                              Pin(size: 96.0, middle: 0.2083),
                              Pin(size: 26.0, middle: 0.4333),
                              child: Text(
                                'Classroom',
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
                              Pin(size: 24.0, middle: 0.4688),
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
            Pin(size: 82.0, start: 23.0),
            Pin(size: 26.0, start: 97.0),
            child: Text(
              'My Class',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: const Color(0xd9635f65),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 15.0, end: 21.0),
            Pin(size: 197.0, middle: 0.316),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 152.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x38610a93),
                                offset: Offset(3, 3),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 38.0, start: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                            ),
                            color: const Color(0x66610a93),
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
                        Pin(size: 29.0, middle: 0.5041),
                        Pin(size: 21.0, start: 8.0),
                        child: Text(
                          'CSE',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xb2610a93),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 68.0, middle: 0.5),
                        Pin(size: 20.0, middle: 0.3277),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Series: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '18',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 69.0, middle: 0.506),
                        Pin(size: 20.0, middle: 0.4859),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Section: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'C',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 98.0, middle: 0.5),
                        Pin(size: 20.0, middle: 0.6497),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Course: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'MATH',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 4.0, end: 22.0),
                        Pin(size: 13.0, start: 13.0),
                        child:
                            // Adobe XD layer: 'Icon material-more-…' (shape)
                            SvgPicture.string(
                          _svg_elstkj,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 77.0, middle: 0.5067),
                        Pin(size: 20.0, middle: 0.8079),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Code:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: ' 2213',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 152.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x38610a93),
                                offset: Offset(3, 3),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 38.0, start: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                            ),
                            color: const Color(0x66610a93),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3a610a93),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 29.0, middle: 0.5041),
                        Pin(size: 21.0, start: 8.0),
                        child: Text(
                          'CSE',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xb2610a93),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 68.0, middle: 0.5),
                        Pin(size: 20.0, middle: 0.3277),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Series: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '18',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 69.0, middle: 0.506),
                        Pin(size: 20.0, middle: 0.4859),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Section: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'C',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 98.0, middle: 0.5),
                        Pin(size: 20.0, middle: 0.6497),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Course: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'MATH',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 4.0, end: 22.0),
                        Pin(size: 13.0, start: 13.0),
                        child:
                            // Adobe XD layer: 'Icon material-more-…' (shape)
                            SvgPicture.string(
                          _svg_elstkj,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 77.0, middle: 0.5067),
                        Pin(size: 20.0, middle: 0.8079),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Code:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: ' 2213',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
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
            Pin(start: 15.0, end: 21.0),
            Pin(size: 197.0, end: 76.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 152.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x38610a93),
                                offset: Offset(3, 3),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 38.0, start: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                            ),
                            color: const Color(0x66610a93),
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
                        Pin(size: 29.0, middle: 0.5041),
                        Pin(size: 21.0, start: 8.0),
                        child: Text(
                          'CSE',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xb2610a93),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 68.0, middle: 0.5),
                        Pin(size: 20.0, middle: 0.3277),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Series: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '18',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 69.0, middle: 0.506),
                        Pin(size: 20.0, middle: 0.4859),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Section: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'C',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 98.0, middle: 0.5),
                        Pin(size: 20.0, middle: 0.6497),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Course: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'MATH',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 4.0, end: 22.0),
                        Pin(size: 13.0, start: 13.0),
                        child:
                            // Adobe XD layer: 'Icon material-more-…' (shape)
                            SvgPicture.string(
                          _svg_elstkj,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 77.0, middle: 0.5067),
                        Pin(size: 20.0, middle: 0.8079),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Code:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: ' 2213',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 152.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x38610a93),
                                offset: Offset(3, 3),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 38.0, start: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                            ),
                            color: const Color(0x66610a93),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3a610a93),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 29.0, middle: 0.5041),
                        Pin(size: 21.0, start: 8.0),
                        child: Text(
                          'CSE',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xb2610a93),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 68.0, middle: 0.5),
                        Pin(size: 20.0, middle: 0.3277),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Series: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '18',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 69.0, middle: 0.506),
                        Pin(size: 20.0, middle: 0.4859),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Section: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'C',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 98.0, middle: 0.5),
                        Pin(size: 20.0, middle: 0.6497),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Course: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'MATH',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 4.0, end: 22.0),
                        Pin(size: 13.0, start: 13.0),
                        child:
                            // Adobe XD layer: 'Icon material-more-…' (shape)
                            SvgPicture.string(
                          _svg_elstkj,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 77.0, middle: 0.5067),
                        Pin(size: 20.0, middle: 0.8079),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: const Color(0xff635f65),
                            ),
                            children: [
                              TextSpan(
                                text: 'Code:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: ' 2213',
                                style: TextStyle(
                                  color: const Color(0xff610a93),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
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
            Pin(size: 124.0, end: 9.0),
            Pin(size: 94.0, start: 91.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
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
                  Pin(size: 23.0, middle: 0.4752),
                  Pin(size: 17.0, start: 14.0),
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 13,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, start: 14.0),
                  Pin(size: 15.0, middle: 0.1899),
                  child:
                      // Adobe XD layer: 'Icon awesome-edit' (shape)
                      SvgPicture.string(
                    _svg_2f5m2p,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 38.0, middle: 0.5581),
                  Pin(size: 17.0, middle: 0.4935),
                  child: Text(
                    'Delete',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 13,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 12.0, start: 14.0),
                  Pin(size: 15.0, middle: 0.5063),
                  child:
                      // Adobe XD layer: 'Icon material-delete' (shape)
                      SvgPicture.string(
                    _svg_1fr6k6,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 62.0, end: 14.0),
                  Pin(size: 17.0, middle: 0.8052),
                  child: Text(
                    'Scan Code',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 13,
                      color: const Color(0xff635f65),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, start: 14.0),
                  Pin(size: 16.0, end: 13.0),
                  child:
                      // Adobe XD layer: 'Icon ionic-md-qr-sc…' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 9.0, start: 0.0),
                        Pin(size: 9.0, start: 0.0),
                        child: SvgPicture.string(
                          _svg_6wwoy3,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 9.0, end: 0.0),
                        Pin(size: 9.0, start: 0.0),
                        child: SvgPicture.string(
                          _svg_nm0hty,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 9.0, end: 0.0),
                        Pin(size: 9.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_u9zn05,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 9.0, start: 0.0),
                        Pin(size: 9.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_hw0mlt,
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
          Container(),
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
const String _svg_elstkj =
    '<svg viewBox="149.0 155.0 4.0 13.0" ><path transform="translate(134.0, 149.0)" d="M 17 9.25 C 18.10000038146973 9.25 19 8.518749237060547 19 7.625000476837158 C 19 6.731250762939453 18.10000038146973 6 17 6 C 15.90000057220459 6 15 6.731250286102295 15 7.625000476837158 C 15 8.518749237060547 15.90000057220459 9.25 17 9.25 Z M 17 10.875 C 15.90000057220459 10.875 15 11.60625076293945 15 12.5 C 15 13.39375114440918 15.90000057220459 14.125 17 14.125 C 18.10000038146973 14.125 19 13.39375114440918 19 12.5 C 19 11.60625076293945 18.10000038146973 10.875 17 10.875 Z M 17 15.75 C 15.90000057220459 15.75 15 16.48125076293945 15 17.375 C 15 18.26874923706055 15.90000057220459 19 17 19 C 18.10000038146973 19 19 18.26874923706055 19 17.375 C 19 16.48125076293945 18.10000038146973 15.75 17 15.75 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2f5m2p =
    '<svg viewBox="220.0 170.0 20.0 15.0" ><path transform="translate(220.0, 169.99)" d="M 13.97916793823242 2.442076921463013 L 17.11111068725586 5.085171699523926 C 17.24305534362793 5.196521282196045 17.24305534362793 5.37819766998291 17.11111068725586 5.489547252655029 L 9.527779579162598 11.889235496521 L 6.305556774139404 12.19105243682861 C 5.875000953674316 12.23207664489746 5.510417938232422 11.92439842224121 5.559029102325439 11.5610466003418 L 5.916667461395264 8.841765403747559 L 13.50000190734863 2.442076921463013 C 13.63194465637207 2.330727338790894 13.84722328186035 2.330727338790894 13.97916793823242 2.442076921463013 Z M 19.60416793823242 1.771047592163086 L 17.90972328186035 0.3410804271697998 C 17.3819465637207 -0.104319155216217 16.52430534362793 -0.104319155216217 15.99305629730225 0.3410804271697998 L 14.76389026641846 1.378392457962036 C 14.63194561004639 1.489742517471313 14.63194561004639 1.6714186668396 14.76389026641846 1.782768487930298 L 17.89583206176758 4.425862312316895 C 18.02777862548828 4.537212371826172 18.24305534362793 4.537212371826172 18.37500190734863 4.425862312316895 L 19.60416793823242 3.388550758361816 C 20.13194465637207 2.940220832824707 20.13194465637207 2.216446876525879 19.60416793823242 1.771047353744507 Z M 13.33333492279053 10.14866065979004 L 13.33333492279053 13.13166522979736 L 2.222222566604614 13.13166522979736 L 2.222222566604614 3.754833221435547 L 10.20139026641846 3.754833221435547 C 10.31250095367432 3.754833221435547 10.41666793823242 3.716739892959595 10.49652862548828 3.652274370193481 L 11.88541793823242 2.480170488357544 C 12.14930534362793 2.257470369338989 11.96180629730225 1.879467248916626 11.59027862548828 1.879467248916626 L 1.666666865348816 1.879467248916626 C 0.7465278506278992 1.879467248916626 0 2.509473085403442 0 3.28599214553833 L 0 13.60050773620605 C 0 14.37702465057373 0.7465278506278992 15.00703048706055 1.666666865348816 15.00703048706055 L 13.88889026641846 15.00703048706055 C 14.80902862548828 15.00703048706055 15.55555629730225 14.37702465057373 15.55555629730225 13.60050773620605 L 15.55555629730225 8.976557731628418 C 15.55555629730225 8.663020133972168 15.10764122009277 8.507715225219727 14.84375190734863 8.727484703063965 L 13.45486259460449 9.899588584899902 C 13.37847328186035 9.966985702514648 13.33333492279053 10.05489158630371 13.33333492279053 10.14866065979004 Z" fill="#610a93" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1fr6k6 =
    '<svg viewBox="220.0 195.0 12.0 15.0" ><path transform="translate(212.5, 190.5)" d="M 8.357142448425293 17.83333396911621 C 8.357142448425293 18.75 9.128570556640625 19.5 10.0714282989502 19.5 L 16.9285717010498 19.5 C 17.87142944335938 19.5 18.64285659790039 18.75 18.64285659790039 17.83333396911621 L 18.64285659790039 7.833333492279053 L 8.357142448425293 7.833333492279053 L 8.357142448425293 17.83333396911621 Z M 19.5 5.333333492279053 L 16.5 5.333333492279053 L 15.64285659790039 4.5 L 11.35714149475098 4.5 L 10.5 5.333333492279053 L 7.5 5.333333492279053 L 7.5 7 L 19.5 7 L 19.5 5.333333492279053 Z" fill="#610a93" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6wwoy3 =
    '<svg viewBox="3.4 4.5 9.0 9.0" ><path  d="M 6.75 8.732812881469727 C 6.75 8.24765682220459 7.115624904632568 7.875000476837158 7.607812404632568 7.875000476837158 L 12.375 7.875000476837158 L 12.375 4.5 L 7.678124904632568 4.5 C 5.322656154632568 4.5 3.375 6.377343654632568 3.375 8.732812881469727 L 3.375 13.5 L 6.75 13.5 L 6.75 8.732812881469727 Z" fill="#610a93" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nm0hty =
    '<svg viewBox="14.4 4.5 9.0 9.0" ><path transform="translate(-9.25, 0.0)" d="M 28.37812423706055 4.5 L 23.625 4.5 L 23.625 7.875 L 28.35000038146973 7.875 C 28.83515739440918 7.875 29.25 8.240625381469727 29.25 8.732812881469727 L 29.25 13.5 L 32.625 13.5 L 32.625 8.732812881469727 C 32.625 6.377343654632568 30.7265625 4.5 28.37812423706055 4.5 Z" fill="#610a93" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u9zn05 =
    '<svg viewBox="14.4 11.5 9.0 9.0" ><path transform="translate(-9.25, -11.0)" d="M 29.25 27.19687461853027 C 29.25 27.68203163146973 28.88437461853027 28.0546875 28.39218711853027 28.0546875 L 23.625 28.0546875 L 23.625 31.5 L 28.39218711853027 31.5 C 30.74765586853027 31.5 32.625 29.55234336853027 32.625 27.19687461853027 L 32.625 22.5 L 29.25 22.5 L 29.25 27.19687461853027 Z" fill="#610a93" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hw0mlt =
    '<svg viewBox="3.4 11.5 9.0 9.0" ><path transform="translate(0.0, -11.0)" d="M 7.607812404632568 28.0546875 C 7.122656345367432 28.0546875 6.75 27.68906211853027 6.75 27.19687461853027 L 6.75 22.5 L 3.375 22.5 L 3.375 27.19687461853027 C 3.375 29.55234336853027 5.322656154632568 31.5 7.678124904632568 31.5 L 12.375 31.5 L 12.375 28.0546875 L 7.607812404632568 28.0546875 Z" fill="#610a93" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
