import 'package:easy_localization/easy_localization.dart';

import 'localization_constants.dart';

import 'package:flutter/material.dart';

class LocalizationHelper {
  LocalizationHelper._();

  static final shared = LocalizationHelper._();

  Widget wrapWithLocalization(Widget page) {
    return EasyLocalization(
      supportedLocales: [
        LocalizationConstants.enUSLocale,
      ],
      path: LocalizationConstants.localizationPath,
      fallbackLocale: LocalizationConstants.fallBackLocale,
      child: page,
    );
  }

  Future<void> changeLocale(
      {required BuildContext context, required Locale selectedLocale}) async {
    await context.setLocale(selectedLocale);
  }

  Future<void> initializeLocalization() async {
    await EasyLocalization.ensureInitialized();
  }
}

String locale(String? text) {
  return (text ?? "").tr();
}
