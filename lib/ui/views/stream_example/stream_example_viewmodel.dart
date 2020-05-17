import 'dart:async';

import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  bool _otherSource = false;

  @override
  Stream<int> get stream =>
      _otherSource ? epochUpdatesNumberFaster() : epochUpdatesNumber();

  String get title => 'This is the time since epoch in seconds \n $data';

  void swapSource() {
    _otherSource = !_otherSource;
    notifySourceChanged();
  }

  Stream<int> epochUpdatesNumber() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 2));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochUpdatesNumberFaster() async* {
    print('goin faster');
    while (true) {
      await Future.delayed(Duration(milliseconds: 500));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
}
