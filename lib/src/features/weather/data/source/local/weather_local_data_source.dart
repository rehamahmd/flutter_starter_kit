import 'package:flutter_starter_kit/app/imports.dart';

@injectable
class WeatherLocalDataSource {
  WeatherLocalDataSource();

  setCachedWeatherData(List<String> data) {
    SharedPreferencesStorage.setStringList(StorageKeys.dayWeather, data);
  }

  List<String> getCachedWeatherData() {
    final result = SharedPreferencesStorage.getStringList(StorageKeys.dayWeather);
    return result ?? [];
  }
}
