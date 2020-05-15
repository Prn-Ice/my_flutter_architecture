import 'package:flutter/material.dart';
import 'package:myflutterarchitecture/ui/views/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (_, model, child) => Scaffold(
        body: Center(
          child: Text('Startup View'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => model.navigateToHome(),
          label: Text('Home View'),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
