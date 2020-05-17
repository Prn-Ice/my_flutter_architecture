import 'package:flutter/material.dart';
import 'package:myflutterarchitecture/ui/views/future_example/future_example_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FutureExampleView extends ViewModelBuilderWidget<FutureExampleViewModel> {
  @override
  Widget builder(
      BuildContext context, FutureExampleViewModel model, Widget child) {
    return Scaffold(
      body: Center(
        child: /* model.hasError
            ? Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(
                  'An error has occered while running the future',
                  style: TextStyle(color: Colors.white),
                ),
              )
            :  */
            model.isBusy ? CircularProgressIndicator() :
            model.data == null
                ? _NoDataErrorWidget()
                :  Text(model.data),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => model.navigateToStreamExample(),
        label: Text('Stream Example'),
      ),
    );
  }

  @override
  FutureExampleViewModel viewModelBuilder(BuildContext context) =>
      FutureExampleViewModel();
}

class _NoDataErrorWidget extends ViewModelWidget<FutureExampleViewModel> {
  @override
  Widget build(BuildContext context, FutureExampleViewModel model) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('NO_DATA'),
        Text(
          model.error.toString(),
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
