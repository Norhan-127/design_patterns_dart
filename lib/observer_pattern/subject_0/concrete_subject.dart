/// A concrete implementation of the [Subject] interface that maintains a list of observers
/// and notifies them of updates.
///
/// This class implements the core functionality of the Observer pattern by:
/// * Maintaining a list of registered observers
/// * Providing methods to register and remove observers
/// * Broadcasting messages to all registered observers
///
/// Example:
/// ```dart
/// final subject = ConcreteSubject();
/// final observer = ConcreteObserver();
/// subject.registerObserver(observer);
/// subject.notifyObservers("Hello observers!");
/// ```
import 'package:observer_pattern/observer_pattern/observer_0/observer_pattern.dart';
import 'package:observer_pattern/observer_pattern/subject_0/subject.dart';

class ConcreteSubject implements Subject{
  final List<Observer> _observers = [];
  @override
  void notifyObservers(String message) {
    for (final observer in _observers) {
      observer.update(message);
    }
  }

  @override
  void registerObserver(Observer observer) {
  _observers.add(observer);
  }
  
  @override

  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

}