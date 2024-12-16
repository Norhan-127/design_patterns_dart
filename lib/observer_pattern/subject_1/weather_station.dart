// Concrete Subject (WeatherStation)
import 'package:observer_pattern/observer_pattern/observer_1/observer_one.dart';
import 'package:observer_pattern/observer_pattern/subject_1/subject_1.dart';

class WeatherStation implements SubjectOne {
  double _temperature = 0.0;
  double _humidity = 0.0;
  double _pressure = 0.0;

  final List<ObserverOne> _observers = [];

  // Add Observer to the list
  @override
  void addObserver(ObserverOne observer) {
    _observers.add(observer);
  }

  // Remove Observer from the list
  @override
  void removeObserver(ObserverOne observer) {
    _observers.remove(observer);
  }

  // Notify all observers of the current state
  @override
  void notifyObservers() {
    for (final observer in _observers) {
      observer.update(_temperature, _humidity, _pressure);
    }
  }

  // Update the weather data and notify observers
  void setWeatherData(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    print('\nWeatherStation: New weather data available.');
    notifyObservers();
  }
}
