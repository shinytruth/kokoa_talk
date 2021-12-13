import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kokoa_talk/common/extensions/string_extensions.dart';
import 'package:kokoa_talk/screen/home_screen.dart';

import 'common/routing_data.dart';
import 'common/transition.dart';

class Routes {
  static const root = '/';
}

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    RoutingData routingData = settings.name!.getRoutingData;
    switch (routingData.route) {
      case Routes.root:
      default:
        return FadeRoute(settings: settings, page: const HomesScreen());
    }
  }
}
