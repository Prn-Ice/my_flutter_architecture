import 'package:flutter/material.dart';
import 'package:myflutterarchitecture/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (_, model, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('${model.title} ${model.counter}'),
              SizedBox(
                height: 50.0,
              ),
              FlatButton(
                onPressed: () => model.incrementCounter(),
                child: Text('Push me'),
                color: Colors.blue[500],
                shape: StadiumBorder(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => model.navigateToPartialBuilds(),
          label: Text(
            'Partial Builds',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
