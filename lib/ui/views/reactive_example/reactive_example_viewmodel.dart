import 'package:myflutterarchitecture/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:myflutterarchitecture/app/router.gr.dart';

class ReactiveExampleViewModel extends BaseViewModel{
  NavigationService _navigationService = locator<NavigationService>();

  Future navigateToFutureExample() async{
    await _navigationService.navigateTo(Routes.futureExampleViewRoute);
  }
}