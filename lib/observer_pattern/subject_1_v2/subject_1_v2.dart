// File: subject_v2.dart
import 'package:observer_pattern/observer_pattern/observer_1_v2/%20observer_v2.dart';

class SubjectV2 {
  final List<ObserverV2> _observers = [];

  void addObserver(ObserverV2 observer) {
    _observers.add(observer);
  }

  void removeObserver(ObserverV2 observer) {
    _observers.remove(observer);
  }

  void notifyObservers(String changeType, double value) {
    for (final observer in _observers) {
      observer.update(changeType, value);
    }
  }
}
