// File: weather_station_v2.dart
import 'package:observer_pattern/observer_pattern/subject_1_v2/subject_1_v2.dart';

class WeatherStationV2 extends SubjectV2 {
  double _temperature = 0.0;
  double _humidity = 0.0;
  double _pressure = 0.0;

  void setTemperature(double temperature) {
    _temperature = temperature;
    notifyObservers('temperature', temperature);
  }

  void setHumidity(double humidity) {
    _humidity = humidity;
    notifyObservers('humidity', humidity);
  }

  void setPressure(double pressure) {
    _pressure = pressure;
    notifyObservers('pressure', pressure);
  }
}
