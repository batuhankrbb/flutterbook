import 'package:auto_size_text/auto_size_text.dart';
import '../../../extensions/context_extension.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertHelper {
  AlertHelper._();

  static final shared = AlertHelper._();

  void showCupertinoAlertDialog(
      {required BuildContext context,
      required String title,
      required String message}) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text("OK"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  void showSnackBar(String message, BuildContext context,
      [bool isPositive = true]) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            isPositive
                ? Icons.check_circle_outline_outlined
                : Icons.highlight_off,
            color: context.colorScheme.onSurface,
            size: context.getHeight(0.03),
          ),
          SizedBox(
            width: context.getWidth(0.01),
          ),
          AutoSizeText(
            message,
            style: TextStyle(
                fontSize: context.getWidth(0.04),
                color: context.colorScheme.onSurface),
            maxLines: 1,
          ),
        ],
      ),
      behavior: SnackBarBehavior.fixed,
      backgroundColor: context.colorScheme.onBackground,
      duration: Duration(seconds: 2),
      elevation: 4,
    ));
  }
}
