import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_book/core/extensions/context_extension.dart';

import 'package:flutter/material.dart';
import 'package:flutter_book/global/constants/app_colors.dart';

class SelectionPageCell extends StatelessWidget {
  SelectionPageCell(
      {Key? key,
      required this.text,
      required this.isSelected,
      required this.onTap,
      required this.isVisible})
      : super(key: key);

  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: buildContainer(context),
      ),
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
      height: context.getHeight(0.05),
      margin: EdgeInsets.only(left: 6, top: 3, bottom: 3, right: 6),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Expanded(
            flex: 85,
            child: buildCustomAutoSizeText(context),
          ),
          Expanded(
            flex: 15,
            child: buildIcon(context),
          ),
        ],
      ),
    );
  }

  Visibility buildIcon(BuildContext context) {
    return Visibility(
      child: Icon(
        Icons.check,
        color: Colors.black,
        size: context.getHeight(0.035),
      ),
      visible: isSelected,
    );
  }

  Widget buildCustomAutoSizeText(BuildContext context) {
    return AutoSizeText(
      text,
      minFontSize: 12,
      style: TextStyle(
        fontSize: context.getHeight(0.020),
        color: Colors.black,
        fontWeight: FontWeight.w300,
      ),
      maxLines: 1,
    );
  }
}
