import 'package:flutter/material.dart';
import 'package:myflutterarchitecture/ui/widgets/smart_widgets/double_increase_counter/double_increase_counter_model.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounter
    extends ViewModelBuilderWidget<DoubleIncreaseCounterModel> {
  @override
  Widget builder(
      BuildContext context, DoubleIncreaseCounterModel model, Widget child) {
    print('building orange box');
    return GestureDetector(
      onTap: () => model.incrementCounter(),
      child: Container(
        width: 100.0,
        height: 100.0,
        color: Colors.deepOrangeAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Tap to double the Counter',
              textAlign: TextAlign.center,
            ),
            Text('${model.counter}')
          ],
        ),
      ),
    );
  }

  @override
  DoubleIncreaseCounterModel viewModelBuilder(BuildContext context) =>
      DoubleIncreaseCounterModel();
}
