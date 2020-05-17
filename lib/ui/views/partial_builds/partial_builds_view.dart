import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myflutterarchitecture/ui/views/partial_builds/partial_builds_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildsView extends ViewModelBuilderWidget<PartialBuildsViewModel> {
  @override
  bool get reactive => false;

  @override
  Widget builder(
      BuildContext context, PartialBuildsViewModel model, Widget child) {
    print('Building partial builds');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _StringForm(),
          _TitleAndValue(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => model.navigateToReactiveView(),
        label: Text('Reactive View'),
      ),
    );
  }

  @override
  PartialBuildsViewModel viewModelBuilder(BuildContext context) =>
      PartialBuildsViewModel();
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  _StringForm({Key key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
      BuildContext context, PartialBuildsViewModel viewModel) {
    var text = useTextEditingController();
    print('Building String Form');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: text,
        onChanged: viewModel.updateString,
      ),
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  _TitleAndValue({Key key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel model) {
    print('Building title and value');
    return Column(
      children: <Widget>[
        Text(
          model.title ?? '',
          style: TextStyle(fontSize: 40),
        ),
      ],
    );
  }
}
