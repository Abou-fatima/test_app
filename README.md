# Task Manager App

A production-ready Flutter task management application designed for daily planning, task tracking, and productivity monitoring.

[![Flutter](https://img.shields.io/badge/Flutter-3.16%2B-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0%2B-0175C2?logo=dart)](https://dart.dev)
[![CI](https://img.shields.io/badge/CI-GitHub%20Actions-2088FF?logo=githubactions&logoColor=white)](https://github.com)

## Overview

This app helps users manage tasks with:
- creation of tasks with title, description, priority, and due date
- marking tasks as complete or pending
- list and dashboard views for monitoring progress
- profile/auth state for a realistic user experience
- English and French localization support
- accessibility labels for key interactive elements

## Screens

The application contains five primary screens:
1. Dashboard home screen
2. Tasks list screen
3. Task details screen
4. Add task screen
5. Profile screen

## Architecture

The project follows a simple layered structure:
- `lib/app` : app shell and routing
- `lib/data/models` : domain models such as `Task` and `User`
- `lib/data/providers` : state management with `ChangeNotifier`
- `lib/data/repositories` : repository layer and simulated persistence logic
- `lib/presentation/screens` : UI screens
- `lib/presentation/widgets` : reusable widgets
- `lib/core/theme` : design system and theming
- `lib/l10n` : localization support

## Functionality

The app allows the user to:
- open the dashboard and check totals for pending/completed tasks
- add new tasks with validation
- view the total list of tasks
- toggle completion state and delete tasks
- navigate between the main screens through the bottom navigation bar

## Local setup

```bash
git clone <your-repository-url>
cd test_app
flutter pub get
flutter run
```

## Testing

The project includes:
- unit tests for models, providers, and repositories
- widget tests for screens and reusable widgets
- integration tests validating the main user flows

Run tests with:

```bash
flutter test
flutter test --coverage
```

## Quality checks

This project is configured to run:
- `flutter analyze`
- `flutter test`
- GitHub Actions CI for linting and automated validation

## Screenshots

Add screenshots in the repository root or a `docs/` folder, for example:
- Dashboard view
- Tasks list
- Add task form
- Profile screen

## Roadmap

- v1.0.0 : initial task manager app
- v1.1.0 : dashboard, provider state, and localization improvements
- v1.2.0 : production polish, accessibility, CI, and documentation

## License

This project is intended for learning and portfolio use.