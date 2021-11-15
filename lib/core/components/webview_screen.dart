import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/global/constants/app_colors.dart';
import '../helpers/webview/web_view_helper.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../extensions/context_extension.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key, required this.url, required this.siteName})
      : super(key: key);
  final String url;
  final String siteName;

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  void initState() {
    super.initState();
    WebViewHelper.shared.initializeWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: widget.url,
          allowsInlineMediaPlayback: true,
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: AutoSizeText(
        widget.siteName,
        style: TextStyle(
          color: Colors.white,
          fontSize: context.getWidth(0.055),
        ),
      ),
    );
  }
}
