import 'package:open_weather_example_flutter/src/Weather features/weather/domain/forecast/forecast.dart';
import 'package:open_weather_example_flutter/src/Weather features/weather/domain/weather/weather_data.dart';

/// Derived model class used in the UI
class ForecastData {
  const ForecastData(this.list);
  factory ForecastData.from(Forecast forecast) {
    return ForecastData(
      forecast.list.map((item) => WeatherData.from(item)).toList(),
    );
  }
  final List<WeatherData> list;
}
