import 'package:flutter/material.dart';

class IconHelper {
  IconHelper._();

  static var shared = IconHelper._();

  IconData getIconByCode(int code) {
    return IconData(code,fontFamily: "MaterialIcons");
  }

  int getCodeByIcon(IconData icon) {
    return icon.codePoint;
  }
}