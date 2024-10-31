import 'dart:io';
import 'package:flutter_starter_kit/app/imports.dart';

import '_init.dart';

void main() async {
  AppFlavors.appFlavors = Flavors.dev;
  await Main.init();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const App());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
