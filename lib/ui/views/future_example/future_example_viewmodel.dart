import 'package:myflutterarchitecture/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:myflutterarchitecture/app/router.gr.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  @override
  Future<String> futureToRun() => getDataFromServer(error: true);

  NavigationService _navigationService = locator<NavigationService>();

  Future navigateToStreamExample() async {
    await _navigationService.navigateTo(Routes.streamExampleViewRoute);
  }

  Future<String> getDataFromServer({bool error = false}) async {
    await Future.delayed(Duration(seconds: 2));
    if (!error) {
      return 'This is fetched from everywhere';
    } else {
      throw Exception('This is an exception');
    }
  }
}
