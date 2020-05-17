import 'package:myflutterarchitecture/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:myflutterarchitecture/app/router.gr.dart';

class PartialBuildsViewModel extends BaseViewModel {
  String _title;

  String get title => _title;

  void updateString(String value) {
    _title = value;
    notifyListeners();
  }

  NavigationService _navigationService = locator<NavigationService>();

  Future navigateToReactiveView() async {
    await _navigationService.navigateTo(Routes.reactiveExampleViewRoute);
  }
}
