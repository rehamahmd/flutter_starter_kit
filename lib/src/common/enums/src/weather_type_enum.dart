import 'package:flutter_starter_kit/app/imports.dart';

enum WeatherTypeEnum {
  sunny('clear', 'Its sunny now', AppIcons.logoDev, AppColors.sunnyBgColor),
  cloudy('cloud', 'Its cloudy now', AppIcons.logoStg, AppColors.cloudyBgColor),
  rainy('rainy', 'Its raining now', AppIcons.logoProd, AppColors.rainyBgColor);

  final String text;
  final String uiText;
  final String icon;
  final Color color;
  const WeatherTypeEnum(this.text, this.uiText, this.icon, this.color);

  static WeatherTypeEnum fromString(String name) {
    return WeatherTypeEnum.values.firstWhere(
      (weatherType) => weatherType.text.toLowerCase() == name.toLowerCase(),
      orElse: () => WeatherTypeEnum.sunny,
    );
  }
}
