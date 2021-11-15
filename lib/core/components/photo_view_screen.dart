import 'package:flutter/material.dart';
import 'package:flutter_book/core/components/global_app_bar.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewScreen extends StatefulWidget {
  PhotoViewScreen({Key? key, required this.title, required this.imageProvider})
      : super(key: key);

  @override
  _PhotoViewScreenState createState() => _PhotoViewScreenState();

  String title;
  ImageProvider imageProvider;
}

class _PhotoViewScreenState extends State<PhotoViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        title: widget.title,
      ),
      body: PhotoView(imageProvider: widget.imageProvider),
    );
  }
}
