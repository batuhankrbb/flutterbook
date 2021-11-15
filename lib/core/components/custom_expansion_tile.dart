import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/core/extensions/context_extension.dart';

class CustomExpansionTile extends StatefulWidget {
  CustomExpansionTile({
    Key? key,
    required this.title,
    required this.children,
    this.leading,
  }) : super(key: key);

  String title;
  Widget? leading;
  List<Widget> children;

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Colors.white,
      collapsedBackgroundColor: Colors.white,
      collapsedIconColor: Colors.black,
      iconColor: Colors.blue,
      title: AutoSizeText(
        widget.title,
        style: TextStyle(
          color: Colors.black,
          fontSize: context.getWidth(0.045),
        ),
      ),
      leading: widget.leading,
      children: widget.children,
    );
  }
}
