import 'package:myflutterarchitecture/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:myflutterarchitecture/app/router.gr.dart';

class HomeViewModel extends BaseViewModel {
  int _counter = 0;
  NavigationService _navigationService = locator<NavigationService>();
  String _title = 'Home Screen ';

  String get title => _title;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  Future navigateToPartialBuilds() async {
    await _navigationService.navigateTo(Routes.partialBuildsViewRoute);
  }
}
