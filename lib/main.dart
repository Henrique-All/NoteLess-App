import 'package:flutter/material.dart';
import 'package:noteless_app/routes/routes.dart';

void main() => runApp(const MaterialApp(
      initialRoute: RoutesManager.homepage,
      onGenerateRoute: RoutesManager.generateRoute,
    ));
