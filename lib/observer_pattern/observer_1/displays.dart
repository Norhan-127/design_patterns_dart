// Concrete Observer (CurrentConditionsDisplay)
import 'package:observer_pattern/observer_pattern/observer_1/observer_one.dart';

class CurrentConditionsDisplay implements ObserverOne {
  double _temperature = 0.0;
  double _humidity = 0.0;

  @override
  void update(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    display();
  }

  void display() {
    print('Current Conditions: $_temperature°C and $_humidity% humidity');
  }
}

// Concrete Observer (StatisticsDisplay)
class StatisticsDisplay implements ObserverOne {
  final List<double> _temperatureHistory = [];

  @override
  void update(double temperature, double humidity, double pressure) {
    _temperatureHistory.add(temperature);
    display();
  }

  void display() {
    final double avgTemperature = _temperatureHistory.reduce((a, b) => a + b) / _temperatureHistory.length;
    print('Statistics Display: Average Temperature: ${avgTemperature.toStringAsFixed(2)}°C');
  }
}

// Concrete Observer (ForecastDisplay)
class ForecastDisplay implements ObserverOne {
  double _lastPressure = 0.0;
  double _currentPressure = 0.0;

  @override
  void update(double temperature, double humidity, double pressure) {
    _lastPressure = _currentPressure;
    _currentPressure = pressure;
    display();
  }

  void display() {
    if (_currentPressure > _lastPressure) {
      print('Forecast: Weather is improving!');
    } else if (_currentPressure < _lastPressure) {
      print('Forecast: Watch out for cooler, rainy weather.');
    } else {
      print('Forecast: More of the same.');
    }
  }
}
