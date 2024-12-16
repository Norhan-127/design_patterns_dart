import 'package:observer_pattern/observer_pattern/observer_0/observer_pattern.dart';

class ConcreteObserver implements Observer {
  final String _name;

  ConcreteObserver(this._name);
  
  @override
  void update(String message) {
    print('Observer $_name received update: $message');
  }
}