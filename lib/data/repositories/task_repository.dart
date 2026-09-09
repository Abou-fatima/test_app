import 'package:task_manager_app/data/models/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getTasks();
  Future<Task> getTask(String id);
  Future<Task> addTask(Task task);
  Future<Task> updateTask(Task task);
  Future<void> deleteTask(String id);
  Future<void> toggleTaskCompletion(String id);
}

class TaskRepositoryImpl implements TaskRepository {
  final List<Task> _tasks = [];
  int _idCounter = 0;

  @override
  Future<List<Task>> getTasks() async {
    return List.unmodifiable(_tasks);
  }

  @override
  Future<Task> getTask(String id) async {
    return _tasks.firstWhere((t) => t.id == id);
  }

  @override
  Future<Task> addTask(Task task) async {
    final newTask = task.copyWith(
      id: task.id.isEmpty ? (++_idCounter).toString() : task.id,
    );
    _tasks.add(newTask);
    return newTask;
  }

  @override
  Future<Task> updateTask(Task task) async {
    final index = _tasks.indexWhere((t) => t.id == task.id);
    if (index != -1) {
      _tasks[index] = task;
      return task;
    }
    throw Exception('Task not found');
  }

  @override
  Future<void> deleteTask(String id) async {
    _tasks.removeWhere((t) => t.id == id);
  }

  @override
  Future<void> toggleTaskCompletion(String id) async {
    final index = _tasks.indexWhere((t) => t.id == id);
    if (index != -1) {
      final task = _tasks[index];
      _tasks[index] = task.copyWith(isCompleted: !task.isCompleted);
    }
  }
}
