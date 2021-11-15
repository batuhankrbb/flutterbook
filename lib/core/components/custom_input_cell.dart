import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/core/extensions/context_extension.dart';
import 'package:flutter_book/global/constants/app_colors.dart';

class CustomInputCell extends StatefulWidget {
  CustomInputCell({
    Key? key,
    required this.title,
    required this.child,
    this.leading,
  }) : super(key: key);

  String title;
  Widget? leading;
  Widget child;

  @override
  _CustomInputCellState createState() => _CustomInputCellState();
}

class _CustomInputCellState extends State<CustomInputCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight(0.08),
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildLeading(),
          Spacer(flex: 3),
          Expanded(
            flex: 20,
            child: buildTitles(context),
          ),
          Expanded(
            flex: 60,
            child: widget.child,
          ),
          Spacer(flex: 4),
        ],
      ),
    );
  }

  Widget buildTitles(BuildContext context) {
    return AutoSizeText(
      widget.title,
      style: TextStyle(
        fontSize: context.getWidth(0.04),
        color: Colors.black,
      ),
    );
  }

  Widget buildLeading() {
    if (widget.leading != null) {
      return widget.leading!;
    } else {
      return SizedBox();
    }
  }
}
