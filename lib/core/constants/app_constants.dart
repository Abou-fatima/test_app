class AppConstants {
  static const String appName = 'Task Manager';
  static const String appVersion = '1.0.0';
  
  // SharedPreferences Keys
  static const String prefTasksKey = 'tasks';
  static const String prefUserKey = 'user';
  
  // API Endpoints
  static const String apiBaseUrl = 'https://api.example.com';
  static const String apiTasksEndpoint = '/tasks';
  static const String apiUsersEndpoint = '/users';
  
  // Task Limits
  static const int maxTaskTitleLength = 100;
  static const int maxTaskDescriptionLength = 500;
  static const int maxTagsPerTask = 5;
}