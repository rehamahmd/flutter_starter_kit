import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starter_kit/app/imports.dart';

import '_init.dart';

void main() async {
  AppFlavors.appFlavors = Flavors.staging;
  await Main.init();
  await dotenv.load(fileName: "assets/.env/.env.test");
  runApp(const App());
}
