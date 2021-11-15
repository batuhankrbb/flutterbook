import '../custom_types/custom_failure/custom_failure.dart';
import 'package:logger/logger.dart';

class LogHelper {
  LogHelper._();

  static var shared = LogHelper._();

  final _logger = Logger();

  final _debugMode = false;

  void debugPrint(String message) {
    if (_debugMode) _logger.d(message);
  }

  void warningPrint(String message) {
    if (_debugMode)  _logger.w(message);
  }

  void errorPrint(String message) {
   if (_debugMode)   _logger.e(message);
  }

  void whatTheFuckPrint(String message) {
   if (_debugMode)   _logger.wtf(message);
  }

  CustomFailure getError(
      {String? errorMessage,
      required String errorCode,
      required String methodCode}) {
    var errorText = errorMessage ?? "Something went wrong.";
    errorPrint("ERROR OCCURED -> Code: $errorCode$methodCode");
    return CustomFailure(messsage: "$errorText | Code: $errorCode$methodCode");
  }
}