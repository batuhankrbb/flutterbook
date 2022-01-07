import 'package:flutter/material.dart';

import 'inavigation_service.dart';


class NavigationService implements INavigationService {
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;

  NavigationService._init();

  //for global key
  GlobalKey<NavigatorState> navigatorKey = GlobalKey(debugLabel: "navigator");

  // ignore: prefer_function_declarations_over_variables
  final removeAllOldRoutes = (Route<dynamic> route) => false;

  @override
  Future navigateToPage(String? path, {Object? data}) async {
    return await navigatorKey.currentState!.pushNamed(path!, arguments: data);
  }

  @override
  Future navigateToPageClear(String? path, {Object? data}) async {
    return await navigatorKey.currentState!
        .pushNamedAndRemoveUntil(path!, removeAllOldRoutes, arguments: false);
  }
}
