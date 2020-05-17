import 'package:auto_route/auto_route_annotations.dart';
import 'package:myflutterarchitecture/ui/views/future_example/future_example_view.dart';
import 'package:myflutterarchitecture/ui/views/home/home_view.dart';
import 'package:myflutterarchitecture/ui/views/partial_builds/partial_builds_view.dart';
import 'package:myflutterarchitecture/ui/views/reactive_example/reactive_example_view.dart';
import 'package:myflutterarchitecture/ui/views/startup/startup_view.dart';
import 'package:myflutterarchitecture/ui/views/stream_example/stream_example_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartupView startupViewRoute;

  HomeView homeViewRoute;

  PartialBuildsView partialBuildsViewRoute;

  ReactiveExampleView reactiveExampleViewRoute;

  FutureExampleView futureExampleViewRoute;

  StreamExampleView streamExampleViewRoute;
}
