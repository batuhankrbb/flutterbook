import 'package:in_app_review/in_app_review.dart';

class RatingHelper {
  RatingHelper._();

  static final shared = RatingHelper._();

  final InAppReview _inAppReview = InAppReview.instance;

  Future<void> requestReview() async {
    if (await _inAppReview.isAvailable()) {
      await _inAppReview.requestReview();
    }
  }
}
