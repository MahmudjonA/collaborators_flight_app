import 'package:flight_booking_app/core/route/rout_names.dart';
import 'package:flight_booking_app/features/account/delete_account.dart';
import 'package:flight_booking_app/features/account/language_page.dart';
import 'package:flight_booking_app/features/account/notification_settings.dart';
import 'package:flight_booking_app/features/account/phone_email_page.dart';
import 'package:flight_booking_app/features/account/security_settings.dart';
import 'package:flight_booking_app/features/account/set_pin.dart';
import 'package:flight_booking_app/features/account/settings_page.dart';
import 'package:flight_booking_app/features/auth/sign_in_page.dart';
import 'package:flight_booking_app/features/auth/sign_up_page.dart';
import 'package:flight_booking_app/features/bottom_nav_bar.dart';
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
      case RouteNames.signInPage:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case RouteNames.signUpPage:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case RouteNames.bottom_nav_bar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case RouteNames.settingPage:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case RouteNames.languagePage:
        return MaterialPageRoute(builder: (_) => const LanguagePage());
      case RouteNames.notificationOPage:
        return MaterialPageRoute(builder: (_) => const NotificationSettings());
      case RouteNames.phoneNumberEmail:
        return MaterialPageRoute(builder: (_) => const PhoneEmailPage());
      case RouteNames.securitySettings:
        return MaterialPageRoute(builder: (_) => const SecuritySettings());
      case RouteNames.deleteAccount:
        return MaterialPageRoute(builder: (_) => const DeleteAccount());
        case RouteNames.setPin:
        return MaterialPageRoute(builder: (_) => const SetPin());
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
