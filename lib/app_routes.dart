import 'package:education_app/presenttion/screens/auth/create_account_page.dart';
import 'package:education_app/presenttion/screens/auth/login_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String loginPage = "/";
  static const String createAcountPage = "/create_account_page";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginPage:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );

      case AppRoutes.createAcountPage:
        return MaterialPageRoute(
          builder: (context) => CreateAccountPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
    }
  }
}
