// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:task_manager_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('End-to-end Tests', () {
    testWidgets('should launch app and show home screen', (tester) async {
      await tester.pumpWidget(const TaskManagerApp());
      await tester.pumpAndSettle();

      expect(find.text('Dashboard'), findsOneWidget);
      expect(find.text('Total Tasks'), findsOneWidget);
      expect(find.text('Completed'), findsOneWidget);
      expect(find.text('Pending'), findsOneWidget);
    });

    testWidgets('should navigate to tasks screen', (tester) async {
      await tester.pumpWidget(const TaskManagerApp());
      await tester.pumpAndSettle();

      final tasksTab = find.text('Tasks');
      await tester.tap(tasksTab);
      await tester.pumpAndSettle();

      expect(find.text('All Tasks'), findsOneWidget);
    });

    testWidgets('should navigate to profile screen', (tester) async {
      await tester.pumpWidget(const TaskManagerApp());
      await tester.pumpAndSettle();

      final profileTab = find.text('Profile');
      await tester.tap(profileTab);
      await tester.pumpAndSettle();

      expect(find.text('Account'), findsOneWidget);
    });
  });
}
