import 'package:observer_pattern/observer_pattern/observer_1_v2/%20observer_v2.dart';

class StatisticsDisplayV2 implements ObserverV2 {
  @override
  void update(String changeType, double value) {
    if (changeType == 'humidity') {
      print("StatisticsDisplayV2 is Received Change!!!");
      print(
          'StatisticsDisplayV2: Humidity statistics updated with value: $value%');
    }
  }
}
