import 'package:observer_pattern/observer/concrete_observer.dart';
import 'package:observer_pattern/subject/concrete_subject.dart';
import 'package:observer_pattern/subject/subject.dart';

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

}
