import 'package:flutter/material.dart';
import 'package:router/utils/routes.dart';
import 'package:router/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Router Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

