import 'package:flutter/material.dart';

import '../pages/bookpage/diary_page.dart';
import '../pages/home_page.dart';
import '../pages/notepage/note_page.dart';

class RoutesManager {
  static const String homepage = '/';
  static const String notepage = '/notepage';
  static const String diarypage = '/diarypage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homepage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case notepage:
        return MaterialPageRoute(builder: (context) => const NotePage());
      case diarypage:
        return MaterialPageRoute(builder: (context) => const DiaryPage());

      default:
        throw const FormatException('Route not found! check routes again');
    }
  }
}
