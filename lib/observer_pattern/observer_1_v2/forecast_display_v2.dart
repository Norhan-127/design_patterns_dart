import 'package:observer_pattern/observer_pattern/observer_1_v2/%20observer_v2.dart';

class ForecastDisplayV2 implements ObserverV2 {
  @override
  void update(String changeType, double value) {
    if (changeType == 'pressure') {
      print("ForecastDisplay is Received Change!!!");
      print('ForecastDisplayV2: Pressure changed, new prediction based on pressure: $value');
    }
  }
}
