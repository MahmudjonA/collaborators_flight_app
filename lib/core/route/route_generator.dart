import 'package:flight_booking_app/core/route/rout_names.dart';
import 'package:flight_booking_app/features/onboarding/onbording_1.dart';
import 'package:flight_booking_app/features/onboarding/onbording_2.dart';
import 'package:flight_booking_app/features/onboarding/onbording_3.dart';
import 'package:flutter/material.dart';

class AppRoute {
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.onboarding_page_1:
        return MaterialPageRoute(builder: (_) => const Onboarding_1());
        case RouteNames.onboarding_page_2:
        return MaterialPageRoute(builder: (_) => const Onboarding_2());
        case RouteNames.onboarding_page_3:
        return MaterialPageRoute(builder: (_) => const Onboarding_3());
      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
