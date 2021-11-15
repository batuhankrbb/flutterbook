import 'package:html/parser.dart' show parse;


class HtmlParser {
HtmlParser._();

  static final shared = HtmlParser._();

  String parseHtmlToString(String htmlText) {
    var document = parse(htmlText);
    var parsedText = document.body?.text;
    return parsedText ?? "";
  }
}
