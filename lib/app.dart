import 'package:flutter/material.dart';
import 'core/route/rout_names.dart';
import 'core/route/route_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: RouteNames.onboarding_page_1,
      onGenerateRoute: AppRoute(context: context).onGenerateRoute,
    );
  }
}
