import 'package:flutter/material.dart';
import 'package:intermediate_final_project/features/nav_bar/presentation/widgets/bottom_nav_bar.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Navbar
      case Routes.navbar:
        return MaterialPageRoute(builder: (_) => CustomBottomNavBar());

      default:
        return null;
    }
  }
}
