import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/core/extensions/context_extension.dart';

class CustomChip<T> extends StatelessWidget {
  CustomChip(
      {Key? key,
      required this.label,
      required this.isSelected,
      required this.value,
      required this.onTap})
      : super(key: key);

  String label;
  bool isSelected;
  T value;
  Function(T value) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(value);
      },
      child: Container(
        height: context.getHeight(0.05),
        width: context.getWidth(0.24),
        alignment: Alignment.center,
        child: Chip(
          backgroundColor: isSelected ? Colors.blue : Colors.grey,
          padding: EdgeInsets.all(context.getWidth(0.02)),
          label: AutoSizeText(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            minFontSize: 10,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
