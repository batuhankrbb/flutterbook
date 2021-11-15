import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_book/global/constants/app_colors.dart';
import 'package:flutter_book/core/extensions/context_extension.dart';

class SelectionPageTextField extends StatefulWidget {
  const SelectionPageTextField({Key? key, required this.textEditingController})
      : super(key: key);

  @override
  _SelectionPageTextFieldState createState() => _SelectionPageTextFieldState();

  final TextEditingController textEditingController;
}

class _SelectionPageTextFieldState extends State<SelectionPageTextField> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        color: Colors.grey,
        child: buildTextFieldRow(context),
      ),
    );
  }

  Row buildTextFieldRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: Icon(
            Icons.search,
            color: Colors.black,
            size: context.getHeight(0.028),
          ),
        ),
        Expanded(
          flex: 70,
          child: buildTextField(),
        ),
        Expanded(
          flex: 20,
          child: buildCancelButtonForTextfield(),
        )
      ],
    );
  }

  Visibility buildCancelButtonForTextfield() {
    return Visibility(
        child: TextButton(
          onPressed: () {
            focusNode.unfocus();
            widget.textEditingController.clear();
          },
          child: AutoSizeText(
            "Cancel",
            style: TextStyle(
              color: Colors.grey,
              fontSize: context.getWidth(0.035),
            ),
          ),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
        visible: widget.textEditingController.text != "");
  }

  TextField buildTextField() {
    return TextField(
      focusNode: focusNode,
      controller: widget.textEditingController,
      decoration: InputDecoration(
        border: InputBorder.none,
      ),
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
    );
  }
}
