import 'package:observer_pattern/observer/observer_pattern.dart';

class ConcreteObserver implements Observer {
  final String _name;

  ConcreteObserver(this._name);
  
  @override
  void update(String message) {
    print('Observer $_name received update: $message');
  }
}