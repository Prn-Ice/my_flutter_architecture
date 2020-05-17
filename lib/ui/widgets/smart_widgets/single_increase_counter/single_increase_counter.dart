import 'package:flutter/material.dart';
import 'package:myflutterarchitecture/ui/widgets/smart_widgets/single_increase_counter/single_increase_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounter
    extends ViewModelBuilderWidget<SingleIncreaseCounterViewModel> {
  @override
  Widget builder(BuildContext context, SingleIncreaseCounterViewModel model,
      Widget child) {
    print('building blue box');
    return GestureDetector(
      onTap: () => model.incrementCounter(),
      child: Container(
        width: 100.0,
        height: 100.0,
        color: Colors.blue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Tap to increment the Counter',
              textAlign: TextAlign.center,
            ),
            Text('${model.counter}')
          ],
        ),
      ),
    );
  }

  @override
  SingleIncreaseCounterViewModel viewModelBuilder(BuildContext context) =>
      SingleIncreaseCounterViewModel();
}
