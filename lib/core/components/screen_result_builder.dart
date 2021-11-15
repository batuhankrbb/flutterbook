import 'package:flutter/material.dart';
import '../custom_types/custom_failure/custom_failure.dart';
import '../custom_types/screen_result_type/screen_result_type.dart';

import 'loading_screen.dart';

class ScreenResultBuilder<T> extends StatelessWidget {
 const ScreenResultBuilder({
    Key? key,
    required this.screenResult,
    this.initialWidget,
    this.loadingWidget,
    required this.completedWidget,
    required this.failureWidget,
    this.isSmallLoading = false,
  }) : super(key: key);

  final ScreenResult<T> screenResult;
  final Widget? initialWidget;
  final Widget? loadingWidget;
  final Widget Function(T data) completedWidget;
  final Widget Function(CustomFailure failure) failureWidget;
  final bool isSmallLoading;

  @override
  Widget build(BuildContext context) {
    return screenResult.when(
      initial: () {
        return initialWidget ??
            LoadingScreen(
              isSmallLoading: isSmallLoading,
            );
      },
      loading: () {
        return loadingWidget ??
            LoadingScreen(
              isSmallLoading: isSmallLoading,
            );
      },
      completed: (data) {
        return completedWidget(data);
      },
      failed: (failure) {
        return failureWidget(failure);
      },
    );
  }
}
