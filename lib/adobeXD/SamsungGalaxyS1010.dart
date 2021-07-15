import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SamsungGalaxyS1010 extends StatelessWidget {
  SamsungGalaxyS1010({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -2.0, end: -3.0),
            Pin(size: 209.0, start: -8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.74), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 171.0, start: 24.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x40000000),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 467.6, end: 43.0),
            child: SvgPicture.string(
              _svg_7c2knu,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
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
          Container(),
          Pinned.fromPins(
            Pin(start: 25.0, end: 25.0),
            Pin(size: 60.0, middle: 0.3431),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 8.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                          width: 3.0, color: const Color(0xff8542ac)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 94.0, start: 25.5),
                  Pin(size: 1.0, start: 8.5),
                  child: SvgPicture.string(
                    _svg_fgdh7j,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 82.0, start: 32.0),
                  Pin(size: 18.0, start: 0.0),
                  child: Text(
                    'Email address',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 13,
                      color: const Color(0xff610a93),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 25.0),
            Pin(size: 52.0, middle: 0.4643),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 2.0, color: const Color(0xffb0a7a7)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 118.0, start: 43.0),
            Pin(size: 18.0, middle: 0.4662),
            child: Text(
              'Enter your password',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 13,
                color: const Color(0xff9e9797),
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, end: 53.0),
            Pin(size: 25.0, middle: 0.4667),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 108.0, end: 25.0),
            Pin(size: 18.0, middle: 0.5418),
            child: Text(
              'Forgot  Password?',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 13,
                color: const Color(0xff8542ac),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 188.0, middle: 0.5),
            Pin(size: 42.0, middle: 0.6104),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                        colors: [
                          const Color(0xa3610a93),
                          const Color(0xef580b84),
                          const Color(0xa6610a93)
                        ],
                        stops: [0.0, 0.0, 1.0],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x8552514d),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 38.0, middle: 0.5),
                  Pin(size: 20.0, middle: 0.4545),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      color: const Color(0xfff0d6f2),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 48.0, middle: 0.4647),
            Pin(size: 50.0, middle: 0.2356),
            child:
                // Adobe XD layer: 'naime2' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 102.0, middle: 0.5),
            Pin(size: 6.0, end: 4.0),
            child: SvgPicture.string(
              _svg_idsck,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 20.0, start: 25.0),
            Pin(size: 20.0, middle: 0.5435),
            child:
                // Adobe XD layer: 'Icon awesome-check-…' (shape)
                SvgPicture.string(
              _svg_5apxdk,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 66.0, start: 52.0),
            Pin(size: 18.0, middle: 0.5434),
            child: Text(
              'Remember ',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 13,
                color: const Color(0xd8610a93),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 215.9, middle: 0.4997),
            Pin(size: 18.0, middle: 0.6688),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 134.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 13,
                      color: const Color(0xd6635f65),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 78.6, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.2, end: 0.4),
                        Pin(start: 0.0, end: 0.0),
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 13,
                            color: const Color(0xe0610a93),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, end: 0.5),
                        child: SvgPicture.string(
                          _svg_hi8jqu,
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
    );
  }
}

const String _svg_7c2knu =
    '<svg viewBox="0.0 129.4 360.0 467.6" ><path transform="translate(-2966.0, -31.73)" d="M 2966.000244140625 201.0245361328125 C 2966.000244140625 201.0245361328125 3009.296630859375 202.4407958984375 3037.35888671875 187.5701141357422 C 3065.421142578125 172.6994476318359 3135.97802734375 138.7093048095703 3221.768798828125 183.3213043212891 C 3307.559326171875 227.9334106445312 3326.000244140625 220.1439514160156 3326.000244140625 220.1439514160156 L 3326.000244140625 628.7334594726562 L 2966.000244140625 628.7334594726562 L 2966.000244140625 201.0245361328125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fgdh7j =
    '<svg viewBox="49.5 247.5 94.0 1.0" ><path transform="translate(49.5, 247.5)" d="M 0 0 L 94 0" fill="none" stroke="#ffffff" stroke-width="5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_idsck =
    '<svg viewBox="129.0 630.0 102.0 6.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(129.0, 630.0)" d="M 3 0 L 99 0 C 100.656852722168 0 102 1.343145608901978 102 3 C 102 4.656854629516602 100.656852722168 6 99 6 L 79.2779541015625 6 L 53.7122802734375 6 L 3 6 C 1.343145608901978 6 0 4.656854629516602 0 3 C 0 1.343145608901978 1.343145608901978 0 3 0 Z" fill="#140101" fill-opacity="0.28" stroke="#707070" stroke-width="1" stroke-opacity="0.28" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_5apxdk =
    '<svg viewBox="25.0 337.0 20.0 20.0" ><path transform="translate(25.0, 334.75)" d="M 17.85714149475098 22.25 L 2.142856597900391 22.25 C 0.9593744277954102 22.25 -5.025855784879241e-07 21.29062652587891 -5.025855784879241e-07 20.10714530944824 L -5.025855784879241e-07 4.392857551574707 C -5.025855784879241e-07 3.209375619888306 0.9593744277954102 2.250000476837158 2.142856597900391 2.250000476837158 L 17.85714149475098 2.250000476837158 C 19.04062461853027 2.250000476837158 20 3.209375619888306 20 4.392857551574707 L 20 20.10714530944824 C 20 21.29062652587891 19.04062461853027 22.25 17.85714149475098 22.25 Z M 8.719374656677246 17.87236785888672 L 16.93366241455078 9.658082008361816 C 17.21258926391602 9.379153251647949 17.21258926391602 8.926876068115234 16.93366241455078 8.647947311401367 L 15.92352867126465 7.637813091278076 C 15.64459896087646 7.358884334564209 15.19232177734375 7.358839988708496 14.91334819793701 7.637813091278076 L 8.214285850524902 14.33683204650879 L 5.086651802062988 11.20919799804688 C 4.807723045349121 10.93027019500732 4.355445861816406 10.93027019500732 4.076473236083984 11.20919799804688 L 3.066339015960693 12.21933174133301 C 2.787410497665405 12.49826049804688 2.787410497665405 12.95053672790527 3.066339015960693 13.22946548461914 L 7.709197044372559 17.8723258972168 C 7.98816967010498 18.15134429931641 8.440402030944824 18.15134429931641 8.719374656677246 17.87237167358398 Z" fill="#610a93" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hi8jqu =
    '<svg viewBox="0.0 14.5 78.6 1.0" ><path transform="translate(0.0, 14.5)" d="M 0 0 L 78.60009765625 1" fill="none" stroke="#610a93" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
