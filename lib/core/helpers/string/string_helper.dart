class StringHelper {
  StringHelper._();

  static final shared = StringHelper._();

  String getImagePath(String imageName) {
    return "assets/images/$imageName.png";
  }

  String convertListToCommaString(List<String> texts) {
    if (texts.isEmpty) {
      return "";
    }
    var totalString = "";
    texts.forEach((element) {
      totalString += ",$element";
    });
    return totalString.substring(1);
  }
}
