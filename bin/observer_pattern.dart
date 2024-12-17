import 'package:observer_pattern/observer_pattern/observer_0/concrete_observer.dart';
import 'package:observer_pattern/observer_pattern/observer_1/displays.dart';
import 'package:observer_pattern/observer_pattern/observer_1_v2/current_conditions_display_v2.dart';
import 'package:observer_pattern/observer_pattern/observer_1_v2/forecast_display_v2.dart';
import 'package:observer_pattern/observer_pattern/observer_1_v2/statistics_display_v2.dart';
import 'package:observer_pattern/observer_pattern/subject_0/concrete_subject.dart';
import 'package:observer_pattern/observer_pattern/subject_0/subject.dart';
import 'package:observer_pattern/observer_pattern/subject_1/weather_station.dart';
import 'package:observer_pattern/observer_pattern/subject_1_v2/weather_station_v2.dart';

void main() {
 final Subject subject =ConcreteSubject();

// Create observers
  final observer1 = ConcreteObserver('Observer 1');
  final observer2 = ConcreteObserver('Observer 2');
  

  // Register observers with the subject
  subject.registerObserver(observer1);
  subject.registerObserver(observer2);

  // Notify observers of changes
  subject.notifyObservers('Hello Observers!');

  // Remove one observer and notify again
  subject.removeObserver(observer1);
  subject.notifyObservers('Observer 1 has been removed.');




print("#############day1################");
  // Create the WeatherStation (subject/observable)
  WeatherStation weatherStation = WeatherStation();

  // Create multiple observers (displays)
  CurrentConditionsDisplay currentDisplay = CurrentConditionsDisplay();
  StatisticsDisplay statisticsDisplay = StatisticsDisplay();
  ForecastDisplay forecastDisplay = ForecastDisplay();

  // Register observers
  weatherStation.addObserver(currentDisplay);
  weatherStation.addObserver(statisticsDisplay);
  weatherStation.addObserver(forecastDisplay);

  // Simulate weather data changes
  weatherStation.setWeatherData(25.0, 65.0, 1013.0);
  weatherStation.setWeatherData(27.0, 70.0, 1009.0);
  weatherStation.setWeatherData(26.0, 90.0, 1012.0);


  print("#############day2################");



  WeatherStationV2 weatherStationV2 = WeatherStationV2();

  CurrentConditionsDisplayV2 currentDisplayV2 = CurrentConditionsDisplayV2();
  ForecastDisplayV2 forecastDisplayV2 = ForecastDisplayV2();
  StatisticsDisplayV2 statisticsDisplayV2 = StatisticsDisplayV2();

  weatherStationV2.addObserver(currentDisplayV2);
  weatherStationV2.addObserver(forecastDisplayV2);
  weatherStationV2.addObserver(statisticsDisplayV2);

  weatherStationV2.setTemperature(25.0);
  weatherStationV2.setPressure(1012.0);
  weatherStationV2.setHumidity(85.0);
  

  print("#############day3################");

}
