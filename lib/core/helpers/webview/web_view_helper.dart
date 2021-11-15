import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class WebViewHelper {
  WebViewHelper._();

  static final shared = WebViewHelper._();

  initializeWebView() {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
}
