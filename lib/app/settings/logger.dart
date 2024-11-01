import 'package:flutter_starter_kit/app/imports.dart';

void log(Object? message) => _customPrint(message, LogLevelEnum.debug);
void info(Object? message) => _customPrint(message, LogLevelEnum.info);
void warning(Object? message) => _customPrint(message, LogLevelEnum.warning);
void error(String? message, Object error) => _customPrint('$message ** $error', LogLevelEnum.error);
void trace(String? message, Object error, StackTrace stackTrace) =>
    _customPrint('$message ** $error\n, \x1B[1m[TRACE]\x1B[0m => \x1B[37m$stackTrace', LogLevelEnum.error);

void _customPrint(Object? message, LogLevelEnum level) {
  if (AppFlavors.appFlavors == Flavors.production) return;
  final currentTime = DateTimeUtils.timeFormat(DateTime.now());
  print('[${level.color}] $currentTime ${level.colorStart}=> $message${level.colorEnd} ');
}
