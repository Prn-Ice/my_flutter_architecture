import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _title = 'Home Screen ';
  String get title => _title;

  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
