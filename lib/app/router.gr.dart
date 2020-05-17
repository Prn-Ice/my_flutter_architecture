// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myflutterarchitecture/ui/views/startup/startup_view.dart';
import 'package:myflutterarchitecture/ui/views/home/home_view.dart';
import 'package:myflutterarchitecture/ui/views/partial_builds/partial_builds_view.dart';
import 'package:myflutterarchitecture/ui/views/reactive_example/reactive_example_view.dart';
import 'package:myflutterarchitecture/ui/views/future_example/future_example_view.dart';
import 'package:myflutterarchitecture/ui/views/stream_example/stream_example_view.dart';

abstract class Routes {
  static const startupViewRoute = '/';
  static const homeViewRoute = '/home-view-route';
  static const partialBuildsViewRoute = '/partial-builds-view-route';
  static const reactiveExampleViewRoute = '/reactive-example-view-route';
  static const futureExampleViewRoute = '/future-example-view-route';
  static const streamExampleViewRoute = '/stream-example-view-route';
  static const all = {
    startupViewRoute,
    homeViewRoute,
    partialBuildsViewRoute,
    reactiveExampleViewRoute,
    futureExampleViewRoute,
    streamExampleViewRoute,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.startupViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => StartupView(),
          settings: settings,
        );
      case Routes.homeViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeView(),
          settings: settings,
        );
      case Routes.partialBuildsViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => PartialBuildsView(),
          settings: settings,
        );
      case Routes.reactiveExampleViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ReactiveExampleView(),
          settings: settings,
        );
      case Routes.futureExampleViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => FutureExampleView(),
          settings: settings,
        );
      case Routes.streamExampleViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => StreamExampleView(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
