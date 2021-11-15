import 'package:flutter/material.dart';
import 'package:flutter_book/global/constants/app_colors.dart';
import '../extensions/context_extension.dart';

class GlobalTextField extends StatefulWidget {
  GlobalTextField(
      {Key? key,
      required this.hintText,
      this.controller,
      this.validator,
      required this.autovalidateMode,
      this.keyboardType,
      this.textInputAction,
      this.isObscureFeatureEnabled = false,
      this.labelText,
      this.prefixIcon,
      this.readOnly = false,
      this.minLines,
      this.maxLines,
      this.height})
      : isObscure = isObscureFeatureEnabled,
        super(key: key);

  String? Function(String? text)? validator;
  String hintText;
  TextEditingController? controller;
  bool isObscureFeatureEnabled;
  bool isObscure;
  TextInputType? keyboardType;
  AutovalidateMode? autovalidateMode;
  TextInputAction? textInputAction;
  String? labelText;
  Widget? prefixIcon;
  bool readOnly;
  int? minLines;
  int? maxLines;
  double? height;

  @override
  _GlobalTextFieldState createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: context.getWidth(0.025),
      ),
      height: widget.height ?? context.getHeight(0.09),
      padding: EdgeInsets.symmetric(
        horizontal: context.getWidth(0.06),
      ),
      child: buildTextFormField(),
    );
  }

  TextFormField buildTextFormField() {
    if (widget.maxLines != null || widget.minLines != null) {
      return TextFormField(
        autovalidateMode: widget.autovalidateMode,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: buildObsecureIcon(),
          labelText: widget.labelText,
          prefix: widget.prefixIcon,
        ),
        enabled: !widget.readOnly,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        readOnly: widget.readOnly,
        textInputAction: widget.textInputAction,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
      );
    }
    return TextFormField(
      autovalidateMode: widget.autovalidateMode,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: buildObsecureIcon(),
        labelText: widget.labelText,
        prefix: widget.prefixIcon,
      ),
      enabled: !widget.readOnly,
      readOnly: widget.readOnly,
      textInputAction: widget.textInputAction,
      obscureText: widget.isObscure,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
    );
  }

  Widget? buildObsecureIcon() {
    if (widget.isObscureFeatureEnabled) {
      var color = widget.isObscure ? Colors.grey : Colors.red;
      return IconButton(
        icon: Icon(
          Icons.remove_red_eye,
          color: color,
        ),
        onPressed: () {
          setState(() {
            widget.isObscure = !widget.isObscure;
          });
        },
      );
    }
  }
}
