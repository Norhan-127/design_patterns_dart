import 'package:observer_pattern/observer_pattern/observer_1_v2/%20observer_v2.dart';

class CurrentConditionsDisplayV2 implements ObserverV2 {
  @override
  void update(String changeType, double value) {
    if (changeType == 'temperature') {
      print("CurrentConditionsDisplayV2 is Received Change!!!");
      print('CurrentConditionsDisplayV2: Temperature updated to $value°C');
    }
  }
}
