import 'package:flutter/material.dart';
import 'package:task_manager_app/presentation/screens/add_task_screen.dart';
import 'package:task_manager_app/presentation/screens/home_screen.dart';
import 'package:task_manager_app/presentation/screens/profile_screen.dart';
import 'package:task_manager_app/presentation/screens/task_detail_screen.dart';
import 'package:task_manager_app/presentation/screens/task_list_screen.dart';

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
      case tasks:
        return MaterialPageRoute(builder: (_) => const TaskListScreen());
      case addTask:
        return MaterialPageRoute(builder: (_) => const AddTaskScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case taskDetail:
        final taskId =
            settings.arguments is String ? settings.arguments as String : '';
        return MaterialPageRoute(
          builder: (_) => TaskDetailScreen(taskId: taskId),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
