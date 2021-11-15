import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_book/core/extensions/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/global/constants/app_colors.dart';

class GlobalAppBar extends StatefulWidget implements PreferredSizeWidget {
  GlobalAppBar(
      {Key? key,
      required this.title,
      this.enableBackButton = false,
      this.color = Colors.blue,
      this.trailing,
      this.leading})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  final bool enableBackButton;
  final String title;
  final Widget? trailing;
  final Color color;
  final Widget? leading;

  @override
  _GlobalAppBarState createState() => _GlobalAppBarState();
}

class _GlobalAppBarState extends State<GlobalAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.color,
      title: AutoSizeText(
        widget.title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: 0,
      leading: widget.leading ?? buildBackButton(),
      actions: widget.trailing != null
          ? [
              Padding(
                padding: EdgeInsets.only(right: context.getWidth(0.035)),
                child: widget.trailing!,
              )
            ]
          : null,
    );
  }

  Widget? buildBackButton() {
    if (widget.enableBackButton) {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      );
    }
  }
}
