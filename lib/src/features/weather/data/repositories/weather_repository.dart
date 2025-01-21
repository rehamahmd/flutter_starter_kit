import 'package:flutter_starter_kit/app/imports.dart';

import '../../domain/entities/weather_entity.dart';
import '../../domain/i_repositories/i_weather_repository.dart';
import '../source/local/weather_local_data_source.dart';
import '../source/remote/weather_remote_data_source.dart';

@Singleton(as: IWeatherRepository)
class WeatherRepository implements IWeatherRepository {
  final WeatherRemoteDataSource _weatherRemoteDataSource;
  final WeatherLocalDataSource _weatherLocalDataSource;
  WeatherRepository(this._weatherRemoteDataSource, this._weatherLocalDataSource);
  String? _day; // cache it on memory not on local storage.

  @override
  Future<Either<AppError, List<WeatherData>>> getCityWeatherByDay(int cityId, String? day) async {
    try {
      if (_day == day) return Right(_getCachedWeatherData());

      final apiResponse = await _weatherRemoteDataSource.getCityWeather(cityId);
      final weatherData = _convertWeatherListForDay(apiResponse.data, day);
      _setCachedWeatherData(weatherData);
      _day = day;
      return Right(weatherData);
    } on UnAuthorizeException {
      return const Left(UnAuthorizedError());
    } on ConnectivityException {
      return const Left(NetworkError());
    } catch (error, stackTrace) {
      Logger.trace("Error in getCityWeatherByDay $day ", error, stackTrace);
      return const Left(OperationError());
    }
  }

  // as we need to save only selected day so i dont need all the data
  List<WeatherData> _convertWeatherListForDay(List<dynamic> list, String? day) {
    return list
        .where((e) => DateTimeUtils.getDayFromDate(e['dt_txt']) == day)
        .map((e) => WeatherData.fromJson(e))
        .toList();
  }

  void _setCachedWeatherData(List<WeatherData> data) {
    final List<String> weatherDataString = data.map((e) => e.toStringa()).toList();
    _weatherLocalDataSource.setCachedWeatherData(weatherDataString);
  }

  List<WeatherData> _getCachedWeatherData() {
    final weatherDataString = _weatherLocalDataSource.getCachedWeatherData();
    return weatherDataString.map((String e) => WeatherData.fromString(e)).toList();
  }
}
