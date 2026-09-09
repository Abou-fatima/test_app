// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_manager_app/data/models/task.dart';
import 'package:task_manager_app/data/providers/task_provider.dart';

void main() {
  late TaskProvider provider;

  setUp(() {
    provider = TaskProvider();
  });

  group('TaskProvider Tests', () {
    test('should initialize with empty tasks', () {
      expect(provider.tasks, []);
      expect(provider.isLoading, false);
      expect(provider.errorMessage, null);
    });

    test('should add a task successfully', () async {
      final task = Task(
        id: '1',
        title: 'New Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      final result = await provider.addTask(task);

      expect(result, true);
      expect(provider.tasks.length, 1);
      expect(provider.tasks.first.title, 'New Task');
      expect(provider.errorMessage, null);
    });

    test('should delete a task successfully', () async {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      await provider.addTask(task);
      final result = await provider.deleteTask('1');

      expect(result, true);
      expect(provider.tasks.isEmpty, true);
    });

    test('should toggle task completion', () async {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      await provider.addTask(task);
      await provider.toggleTaskCompletion('1');

      expect(provider.tasks.first.isCompleted, true);
    });
  });
}
