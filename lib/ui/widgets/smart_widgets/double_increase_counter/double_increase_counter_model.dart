import 'package:myflutterarchitecture/app/locator.dart';
import 'package:myflutterarchitecture/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounterModel extends ReactiveViewModel {
  CounterService _counterService = locator<CounterService>();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];

  int get counter => _counterService.counter;

  void incrementCounter() {
    _counterService.doubleCounter();
    notifyListeners();
  }
}
