import 'launch_app.dart';

import 'dependency_injection/injection_container.dart';

class AppInitializeHelper {
  AppInitializeHelper._();

  static var shared = AppInitializeHelper._();

  Future<void> initializeApp() async {
    await setUpInjections();
    await launchApp();
  }
}
