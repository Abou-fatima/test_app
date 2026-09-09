import 'package:task_manager_app/data/models/user.dart';

abstract class UserRepository {
  Future<User> getUser(String id);
  Future<User> updateUser(User user);
  Future<void> deleteUser(String id);
}

class UserRepositoryImpl implements UserRepository {
  User? _currentUser;

  @override
  Future<User> getUser(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    if (_currentUser != null && _currentUser!.id == id) {
      return _currentUser!;
    }
    throw Exception('User not found');
  }

  @override
  Future<User> updateUser(User user) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _currentUser = user;
    return user;
  }

  @override
  Future<void> deleteUser(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (_currentUser != null && _currentUser!.id == id) {
      _currentUser = null;
    }
  }
}