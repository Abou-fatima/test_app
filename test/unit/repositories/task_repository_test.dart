// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_manager_app/data/models/task.dart';
import 'package:task_manager_app/data/repositories/task_repository.dart';

void main() {
  late TaskRepositoryImpl repository;

  setUp(() {
    repository = TaskRepositoryImpl();
  });

  group('TaskRepository Tests', () {
    test('should add a task successfully', () async {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      final addedTask = await repository.addTask(task);

      expect(addedTask.id, isNotNull);
      expect(addedTask.title, 'Test Task');
    });

    test('should get tasks successfully', () async {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      await repository.addTask(task);
      final tasks = await repository.getTasks();

      expect(tasks.isNotEmpty, true);
      expect(tasks.length, 1);
    });

    test('should update a task successfully', () async {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      final addedTask = await repository.addTask(task);
      final updatedTask = addedTask.copyWith(
        title: 'Updated Task',
        isCompleted: true,
      );

      final result = await repository.updateTask(updatedTask);

      expect(result.title, 'Updated Task');
      expect(result.isCompleted, true);
    });

    test('should delete a task successfully', () async {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      await repository.addTask(task);
      await repository.deleteTask('1');

      final tasks = await repository.getTasks();
      expect(tasks.isEmpty, true);
    });

    test('should toggle task completion', () async {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      await repository.addTask(task);
      await repository.toggleTaskCompletion('1');

      final tasks = await repository.getTasks();
      expect(tasks.first.isCompleted, true);
    });
  });
}
