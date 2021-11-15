import 'package:flutter/material.dart';

class ColorHelper {
  ColorHelper._();

  static var shared = ColorHelper._();

  Color getColorFromHex({required String hexColor}) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    var hexNumber = int.parse(hexColor, radix: 16);
    return Color(hexNumber);
  }

  String getHexFromColor({required Color color}) {
    var hex = '#${color.value.toRadixString(16)}';
    return hex;
  }
}
