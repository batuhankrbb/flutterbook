import 'package:flutter/material.dart';
//import 'constant/routes.dart';
import 'transitions/fade_route.dart';
import 'transitions/rotation_route.dart';
import 'transitions/scale_rotate_route.dart';
import 'transitions/size_route.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  /*Example Using
  Route<dynamic> generateRoute(args) {
    switch (args.name) {
      case RouteConstants.onboard:
        return _navigateToDefault(const OnBoard());
      
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                body: Center(child: Text("Opppsss.. Not found any page."))));
    }
  }
  */

  //Manage your Transitions

  // ignore: unused_element
  static MaterialPageRoute _navigateToDefault(Widget page) {
    return MaterialPageRoute(
      builder: (context) => page,
    );
  }

  // ignore: unused_element
  static PageRoute _navigateToFadeDefault(Widget page) {
    return FadeRoute(page: page);
  }

  // ignore: unused_element
  static PageRoute _navigateToRotationDefault(Widget page) {
    return RotationRoute(page: page);
  }

  // ignore: unused_element
  static PageRoute _navigateToScaleRotationDefault(Widget page) {
    return ScaleRotateRoute(page: page);
  }

  // ignore: unused_element
  static PageRoute _navigateToSizeRotationDefault(Widget page) {
    return SizeRoute(page: page);
  }

  // ignore: unused_element

}
