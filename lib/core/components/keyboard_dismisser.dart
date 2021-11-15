import 'package:flutter/material.dart';
import '../extensions/context_extension.dart';

class KeyboardDismisser extends StatefulWidget {
  KeyboardDismisser({Key? key, required this.child}) : super(key: key);

  @override
  _KeyboardDismisserState createState() => _KeyboardDismisserState();

  Widget child;
}

class _KeyboardDismisserState extends State<KeyboardDismisser> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.dismissKeyboard();
      },
      behavior: HitTestBehavior.translucent,
      child: widget.child,
    );
  }
}
