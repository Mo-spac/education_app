import 'package:education_app/presenttion/screens/auth/login_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String loginPage = "/";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginPage:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
    }
  }
}
