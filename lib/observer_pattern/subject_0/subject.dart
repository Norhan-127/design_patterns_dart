import 'package:observer_pattern/observer_pattern/observer_0/observer_pattern.dart';

abstract class Subject {
  void registerObserver(Observer observer);
  void removeObserver(Observer observer) ;
  void notifyObservers(String message);
/// A base class representing the Subject in the Observer pattern.
///
/// The Subject maintains a list of observers and provides mechanisms to
/// add, remove, and notify observers of state changes.
///
/// This class is typically used as a base class for concrete subjects that need
/// to implement the observable behavior in a publish-subscribe relationship.
///
/// Example usage:
/// ```dart
/// class ConcreteSubject extends Subject {
///   // Implementation
/// }
/// ```
}