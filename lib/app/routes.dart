import 'package:flutter/material.dart';
import 'package:task_manager_app/presentation/screens/home_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String tasks = '/tasks';
  static const String taskDetail = '/task-detail';
  static const String addTask = '/add-task';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      // Add more routes as needed
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}

// Import this in app.dart
// import 'package:task_manager_app/presentation/screens/home_screen.dart';
