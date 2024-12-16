// Abstract Subject (Interface)

import 'package:observer_pattern/observer_pattern/observer_1/observer_one.dart';

abstract class SubjectOne {
  void addObserver(ObserverOne observer);
  void removeObserver(ObserverOne observer);
  void notifyObservers();
}