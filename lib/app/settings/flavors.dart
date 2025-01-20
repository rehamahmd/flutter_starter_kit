import 'package:flutter_starter_kit/app/imports.dart';

enum Flavors {
  dev(
    "http://localhost:5062/api/",
    "assets/.env/.env.test",
    AppIcons.logoDev,
  ),
  staging(
    "http://staging.api....../",
    "assets/.env/.env.test",
    AppIcons.logoStg,
  ),
  production(
    "https://live.api....../",
    "assets/.env/.env.prod",
    AppIcons.logoProd,
  );

  final String baseUrl;
  final String envFilePath;
  final String logoPath;
  const Flavors(this.baseUrl, this.envFilePath, this.logoPath);
}

class AppFlavors {
  static Flavors appFlavors = Flavors.dev;
  static String get appName => appFlavors.name;
  static String get baseUrl => appFlavors.baseUrl;
  static String get envFilePath => appFlavors.envFilePath;
  static String get logoPath => appFlavors.logoPath;
}
