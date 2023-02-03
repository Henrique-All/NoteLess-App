import 'package:flutter/material.dart';
import 'package:noteless_app/pages/home_page.dart';
import 'package:noteless_app/pages/notepage/note_page.dart';

class RoutesManager {
  static const String homepage = '/';
  static const String notepage = '/notepage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homepage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case notepage:
        return MaterialPageRoute(builder: (context) => const NotePage());

      default:
        throw const FormatException('Route not found! check routes again');
    }
  }
}
