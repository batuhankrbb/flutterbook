import 'package:flutter/material.dart';

extension EasyContext on BuildContext {
  double getHeight(double ratio) => MediaQuery.of(this).size.height * ratio;
  double getWidth(double ratio) => MediaQuery.of(this).size.width * ratio;

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Size get size => MediaQuery.of(this).size;

  void dismissKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(this);

    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}

