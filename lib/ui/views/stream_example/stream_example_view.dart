import 'package:flutter/material.dart';
import 'package:myflutterarchitecture/ui/views/stream_example/stream_example_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StreamExampleView extends ViewModelBuilderWidget<StreamExampleViewModel> {
  @override
  Widget builder(
      BuildContext context, StreamExampleViewModel model, Widget child) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            model.dataReady ? Text(model.title) : CircularProgressIndicator(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: model.swapSource,
        label: Text('Swap Source'),
      ),
    );
  }

  @override
  StreamExampleViewModel viewModelBuilder(BuildContext context) =>
      StreamExampleViewModel();
}
