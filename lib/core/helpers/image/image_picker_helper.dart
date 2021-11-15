import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class ImageHelper {
  ImageHelper._();

  static final shared = ImageHelper._();

  Image getAssetImage({required String imageName}) {
    return Image.asset("assets/images/$imageName.png");
  }

  Future<Uint8List?> getBytesFromXFile({required XFile? file}) async {
    if (file != null) {
      var bytes = await file.readAsBytes();
      return bytes;
    }
  }

  Future<Uint8List?> getBytesFromFile({required File? file}) async {
    if (file != null) {
      var bytes = await file.readAsBytes();
      return bytes;
    }
  }

  Future<File?> getFileFromBytes({required Uint8List? bytes}) async {
    if (bytes != null) {
      final tempDir = await getTemporaryDirectory();
      final file = await File('${tempDir.path}/image.jpg').create();
      file.writeAsBytesSync(bytes);
      return file;
    }
  }
}

