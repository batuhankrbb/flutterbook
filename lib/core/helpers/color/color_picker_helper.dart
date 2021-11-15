import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/core/extensions/context_extension.dart';

class ColorPickerHelper {
  ColorPickerHelper._();

  static var shared = ColorPickerHelper._();

  Future<bool> showColorPickerDialog(
      {required Color color,
      required Function(Color color) onColorChanged,
      required BuildContext context}) async {
    return ColorPicker(
      color: color,

      onColorChanged: onColorChanged,
      width: 40,
      height: 40,
      borderRadius: 4,
      spacing: 5,
      runSpacing: 5,
      wheelDiameter: 155,

      showColorName: true,
      materialNameTextStyle: Theme.of(context).textTheme.caption,
      colorNameTextStyle: Theme.of(context).textTheme.caption,
      colorCodeTextStyle: Theme.of(context).textTheme.caption,
      pickersEnabled: const <ColorPickerType, bool>{
        ColorPickerType.both: false,
        ColorPickerType.primary: true,
        ColorPickerType.accent: true,
        ColorPickerType.bw: false,
        ColorPickerType.custom: true,
        ColorPickerType.wheel: true,
      },
    ).showPickerDialog(
      context,
      constraints: BoxConstraints(
          minHeight: context.getHeight(0.4), minWidth: 300, maxWidth: 320),
    );
  }
}
