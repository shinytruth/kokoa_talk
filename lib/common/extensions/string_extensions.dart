import 'package:flutter/material.dart';

import '../routing_data.dart';

extension StringExtensions on String {
  RoutingData get getRoutingData {
    var uriData = Uri.parse(this);
    return RoutingData(
        queryParameters: uriData.queryParameters, route: uriData.path);
  }

  String get overflow => Characters(this)
      .replaceAll(Characters(''), Characters('\u{200B}'))
      .toString();
}
