import 'package:flutter/material.dart';
import 'package:task_manager_app/data/models/user.dart';
import 'package:task_manager_app/data/repositories/user_repository.dart';

class AuthProvider extends ChangeNotifier {
  final UserRepository _repository = UserRepositoryImpl();

  User? _currentUser;
  bool _isLoading = false;
  String? _errorMessage;

  User? get currentUser => _currentUser;
  bool get isLoading => _isLoading;
  bool get isAuthenticated => _currentUser != null;
  String? get errorMessage => _errorMessage;

  Future<bool> login(String email, String password) async {
    _setLoading(true);
    try {
      await Future.delayed(const Duration(milliseconds: 200));
      final user = User(
        id: '1',
        email: email,
        name: 'John Doe',
        createdAt: DateTime.now(),
      );
      _currentUser = user;
      await _repository.updateUser(user);
      _errorMessage = null;
      notifyListeners();
      return true;
    } catch (e) {
      _errorMessage = e.toString();
      notifyListeners();
      return false;
    } finally {
      _setLoading(false);
    }
  }

  Future<void> logout() async {
    _currentUser = null;
    notifyListeners();
  }

  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }
}
