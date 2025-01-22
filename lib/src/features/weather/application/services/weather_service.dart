import 'package:flutter_starter_kit/app/imports.dart';

import '../../domain/entities/weather_entity.dart';
import '../../domain/i_repositories/i_weather_repository.dart';

@injectable
class WeatherService {
  final IWeatherRepository _weatherRepository;
  WeatherService(this._weatherRepository);

  Future<Either<AppError, List<WeatherEntity>>> getCityWeatherByDay(int cityId, String? day) async {
    final allDayWeatherEntity = await _weatherRepository.getCityWeatherByDay(cityId, day);
    // allDayWeatherEntity.fold((error) => Left(error), (watherData) {
    //   // TODO: get Closest weather to the currrent Time
    // });
    return allDayWeatherEntity;
  }
}
