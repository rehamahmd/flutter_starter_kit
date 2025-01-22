import 'package:flutter_starter_kit/app/imports.dart';

import '../../domain/entities/weather_entity.dart';

class WeatherStateWidget extends StatelessWidget {
  final WeatherEntity weather;
  const WeatherStateWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    final weatherType = weather.weatherType;
    return Container(
        color: weatherType.color,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText.primary(text: weatherType.uiText),
              ImageWidget(props: ImageWidgetProps(image: weatherType.icon)),
              AppText.primary(text: weatherType.uiText),
              AppText.primary(text: "Dubai"),
              AppText.primary(text: weather.windSpeed.toString() ?? ""),
              AppText.primary(text: weather.humidity.toString() ?? ""),
            ],
          ),
        ));
    // return switch (weatherType) {
    //   WeatherTypeEnum.sunny => Container(color: ,),
    //   _ => SizedBox(),
    // };
  }
}
