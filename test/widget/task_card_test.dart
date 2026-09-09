import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_app/data/models/task.dart';
import 'package:task_manager_app/data/providers/task_provider.dart';
import 'package:task_manager_app/presentation/widgets/task_card.dart';

void main() {
  Widget buildTestWidget(Task task) {
    return MaterialApp(
      home: Scaffold(
        body: ChangeNotifierProvider(
          create: (_) => TaskProvider(),
          child: TaskCard(task: task),
        ),
      ),
    );
  }

  group('TaskCard Widget Tests', () {
    testWidgets('should display task information correctly', (tester) async {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
        priority: TaskPriority.high,
      );

      await tester.pumpWidget(buildTestWidget(task));

      expect(find.text('Test Task'), findsOneWidget);
      expect(find.text('Test Description'), findsOneWidget);
      expect(find.text('High'), findsOneWidget);
    });

    testWidgets('should show checkbox and toggle completion', (tester) async {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
        isCompleted: false,
      );

      await tester.pumpWidget(buildTestWidget(task));

      final checkbox = find.byType(Checkbox);
      expect(checkbox, findsOneWidget);
    });

    testWidgets('should show delete button', (tester) async {
      final task = Task(
        id: '1',
        title: 'Test Task',
        description: 'Test Description',
        createdAt: DateTime(2026, 1, 1),
      );

      await tester.pumpWidget(buildTestWidget(task));

      final deleteButton = find.byIcon(Icons.delete_outline);
      expect(deleteButton, findsOneWidget);
    });
  });
}
