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
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));
    return List.from(_tasks);
  }

  @override
  Future<Task> getTask(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final task = _tasks.firstWhere((t) => t.id == id);
    return task;
  }

  @override
  Future<Task> addTask(Task task) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final newTask = task.copyWith(id: (++_idCounter).toString());
    _tasks.add(newTask);
    return newTask;
  }

  @override
  Future<Task> updateTask(Task task) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _tasks.indexWhere((t) => t.id == task.id);
    if (index != -1) {
      _tasks[index] = task;
      return task;
    }
    throw Exception('Task not found');
  }

  @override
  Future<void> deleteTask(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _tasks.removeWhere((t) => t.id == id);
  }

  @override
  Future<void> toggleTaskCompletion(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final index = _tasks.indexWhere((t) => t.id == id);
    if (index != -1) {
      final task = _tasks[index];
      _tasks[index] = task.copyWith(isCompleted: !task.isCompleted);
    }
  }
}