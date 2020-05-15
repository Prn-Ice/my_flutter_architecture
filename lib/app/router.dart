import 'package:auto_route/auto_route_annotations.dart';
import 'package:myflutterarchitecture/ui/views/home/home_view.dart';
import 'package:myflutterarchitecture/ui/views/startup/startup_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartupView startupViewRoute;

  HomeView homeViewRoute;
}
