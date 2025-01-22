import 'dart:convert';

import 'package:flutter_starter_kit/app/imports.dart';

class WeatherEntity {
  final int dt;
  final double temp;
  final int humidity;
  final WeatherTypeEnum weatherType;
  final double windSpeed;
  final String date;

  WeatherEntity({
    required this.dt,
    required this.temp,
    required this.humidity,
    required this.weatherType,
    required this.windSpeed,
    required this.date,
  });

  factory WeatherEntity.fromJson(Map<String, dynamic> json) {
    return WeatherEntity(
      dt: json['dt'],
      temp: json['main']['temp'],
      humidity: json['main']['humidity'],
      weatherType: WeatherTypeEnum.fromString(json['weather'][0]['main']),
      windSpeed: json['wind']['speed'],
      date: json['dt_txt'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'dt': dt,
      'main': {
        'temp': temp,
        'humidity': humidity,
      },
      'weather': [
        {'main': weatherType.toString()},
      ],
      'wind': {'speed': windSpeed},
      'dt_txt': date,
    };
  }

  /// Factory method to create an instance from a JSON string
  factory WeatherEntity.fromString(String jsonString) {
    final Map<String, dynamic> json = Map<String, dynamic>.from(jsonDecode(jsonString) as Map); // Decode JSON string
    return WeatherEntity.fromJson(json);
  }

  /// Converts the object to a JSON string
  String toString() {
    return jsonEncode(toJson());
  }
}
