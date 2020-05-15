import 'package:flutter/material.dart';
import 'package:myflutterarchitecture/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (_, model, child) => Scaffold(
        body: Center(
          child: Text('${model.title} ${model.counter}'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => model.incrementCounter(),
          label: Text('Push me'),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
