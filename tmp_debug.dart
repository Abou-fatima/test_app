import 'package:task_manager_app/data/models/task.dart';
import 'package:task_manager_app/data/providers/task_provider.dart';

Future<void> main() async {
  final p = TaskProvider();
  print('before add tasks=${p.tasks.length} loading=${p.isLoading}');
  final task = Task(id: '1', title: 'New Task', description: 'desc', createdAt: DateTime(2026,1,1));
  final result = await p.addTask(task);
  print('result=$result tasks=${p.tasks.length} error=${p.errorMessage}');
  print('all=${p.tasks.map((t) => t.title).toList()}');
}
