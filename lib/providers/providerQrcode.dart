import 'package:flutter/material.dart';

class QRCode extends ChangeNotifier {
  String code = '';
  passQRCode(String value) {
    code = value;
    notifyListeners();
  }
}
