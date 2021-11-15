import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareHelper {
  ShareHelper._();

  static final shared = ShareHelper._();

  Future<void> share(
      {required String text,
      required BuildContext context,
      String? subject}) async {
    await Share.share(
      text,
      subject: subject,
      sharePositionOrigin: _getShareRect(context),
    );
  }

  Future<void> shareApp(
      {required BuildContext context,
      required String mainText,
      required String subjectText}) async {
    await Share.share(
      mainText,
      subject: subjectText,
      sharePositionOrigin: _getShareRect(context),
    );
  }

  Rect? _getShareRect(BuildContext context) {
    var size = context.size;
    if (size == null) {
      return null;
    }
    return Rect.fromLTWH(0, 0, size.width, size.height / 2);
  }
}
