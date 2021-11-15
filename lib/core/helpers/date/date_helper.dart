import 'package:intl/intl.dart';

class DateHelper {
  DateHelper._();

  static final shared = DateHelper._();

  String formatDate(
      {required DateTime dateTime, String formatPattern = "yyy-MM-dd"}) {
    var dateFormat = DateFormat(formatPattern);
    return dateFormat.format(dateTime);
  }
  
  String formatDateAsTitle({required DateTime dateTime}) {
    var nowDate = DateTime.now();
    var month = DateFormat("MMMM").format(dateTime);
    
    if (nowDate.year == dateTime.year) {
      return "${month}";
    }
    return "${month} ${dateTime.year}";
  }
}
