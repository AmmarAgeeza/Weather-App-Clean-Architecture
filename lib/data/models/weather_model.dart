import 'package:weather_clean_architecture/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
    super.id,
    super.cityName,
    super.main,
    super.description,
    super.pressure,
  );

  factory WeatherModel.fromJson(Map<String, dynamic> jsonData) {
    return WeatherModel(
      jsonData['id'],
      jsonData['name'],
      jsonData['weather'][0]['main'],
      jsonData['weather'][0]['description'],
      jsonData['main']['pressure'],
    );
  }
}
