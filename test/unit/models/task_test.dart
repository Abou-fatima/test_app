import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_manager_app/data/models/task.dart';

void main() {
  group('Task Model Tests', () {
    test('should create a task with default values', () {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      expect(task.id, '1');
      expect(task.title, 'Test Task');
      expect(task.description, 'Test Description');
      expect(task.isCompleted, false);
      expect(task.priority, TaskPriority.medium);
      expect(task.tags, []);
    });

    test('should create a task with all parameters', () {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        isCompleted: true,
        createdAt: DateTime(2026, 1, 1),
        dueDate: DateTime(2026, 1, 15),
        priority: TaskPriority.high,
        tags: ['work', 'urgent'],
      );

      expect(task.isCompleted, true);
      expect(task.priority, TaskPriority.high);
      expect(task.tags, ['work', 'urgent']);
      expect(task.dueDate, DateTime(2026, 1, 15));
    });

    test('should copyWith correctly', () {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      final updatedTask = task.copyWith(
        title: 'Updated Title',
        isCompleted: true,
      );

      expect(updatedTask.id, '1');
      expect(updatedTask.title, 'Updated Title');
      expect(updatedTask.isCompleted, true);
      expect(updatedTask.description, 'Test Description');
    });

    test('should handle priority extension correctly', () {
      expect(TaskPriority.low.label, 'Low');
      expect(TaskPriority.medium.label, 'Medium');
      expect(TaskPriority.high.label, 'High');

      expect(TaskPriority.low.color, Colors.green);
      expect(TaskPriority.medium.color, Colors.orange);
      expect(TaskPriority.high.color, Colors.red);
    });
  });
}
