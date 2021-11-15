import 'package:flutter/material.dart';

class ImageHelper {
  ImageHelper._();

  static final shared = ImageHelper._();

  Image getAssetImage({required String imageName}) {
    return Image.asset("assets/images/$imageName.png");
  }
}
