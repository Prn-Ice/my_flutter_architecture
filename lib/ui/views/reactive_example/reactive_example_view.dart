import 'package:flutter/material.dart';
import 'package:myflutterarchitecture/ui/views/reactive_example/reactive_example_viewmodel.dart';
import 'package:myflutterarchitecture/ui/widgets/smart_widgets/double_increase_counter/double_increase_counter.dart';
import 'package:myflutterarchitecture/ui/widgets/smart_widgets/single_increase_counter/single_increase_counter.dart';
import 'package:stacked/stacked.dart';

class ReactiveExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('building reactive view');
    return ViewModelBuilder<ReactiveExampleViewModel>.nonReactive(
      builder: (_, model, child) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SingleIncreaseCounter(),
                SizedBox(width: 40.0),
                DoubleIncreaseCounter(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () => model.navigateToFutureExample(),
            label: Text('Future Example')),
      ),
      viewModelBuilder: () => ReactiveExampleViewModel(),
    );
  }
}
