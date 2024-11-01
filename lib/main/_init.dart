import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starter_kit/app/settings/flavors.dart';

class Main {
  static Future<void> init() async {
    await dotenv.load(fileName: AppFlavors.envFilePath);
    WidgetsFlutterBinding.ensureInitialized();
  }
}
