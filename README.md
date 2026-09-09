# Task Manager App

A production-ready Flutter task management application focused on productivity, simple task organization, local state management, and clean UX.

[![Flutter](https://img.shields.io/badge/Flutter-3.16%2B-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0%2B-0175C2?logo=dart)](https://dart.dev)
[![CI](https://img.shields.io/badge/CI-GitHub%20Actions-2088FF?logo=githubactions&logoColor=white)](https://github.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Overview

This project is a task manager application designed for everyday planning. It allows users to:

- create tasks with a title, description, priority, and due date
- track task completion status
- view dashboard statistics and summaries
- browse the full task list and task detail screens
- manage profile state with login/logout flow
- switch between English and French localization
- navigate a clean mobile-first interface with accessibility support

The application has been structured to reflect a production-oriented Flutter architecture and is suitable for portfolio demonstration and technical review.

## Features

### Core functionality
- Add task form with validation
- Task list and dashboard overview
- Task detail screen with metadata information
- Task completion toggle and deletion
- Multi-screen bottom navigation
- Profile/auth experience with user display

### UX and quality
- Material 3 themed application
- Light and dark theme support
- English and French support
- Semantic labels on interactive elements
- Stateless and stateful UI components organized cleanly
- Refresh indicators and error states

### Technical standards
- Flutter + Dart project
- Provider pattern for state management
- Repository separation from UI logic
- Clean architecture-inspired package organization
- CI-ready project configuration

## App structure

The codebase is organized in a simple layered structure:

- app/
  - application shell and navigation setup
- core/
  - theme definitions, constants, and validation utilities
- data/
  - models, repositories, and providers
- l10n/
  - localization support
- presentation/
  - screens, widgets, and UI logic
- test/
  - unit, widget, and integration tests

## Screens

The app includes the following main screens:

1. Dashboard screen
   - shows counters for total, completed, and pending tasks
   - displays recent tasks
   - includes quick actions

2. Task list screen
   - displays all saved tasks
   - lets the user toggle completion and delete tasks

3. Add task screen
   - allows creation of a task with validation rules
   - supports title, description, priority, and due date

4. Task details screen
   - presents complete task info
   - includes creation date and optional due date

5. Profile screen
   - shows a user avatar and profile information
   - allows login/logout flow

## Architecture and state flow

The app follows a simple but scalable pattern:

- models represent business entities such as Task and User
- repositories expose data access and simulate persistence logic
- providers manage state and notify the UI when data changes
- screens consume provider values and render the interface
- widgets are kept reusable and focused on UI rendering

This separation makes the project easier to test and easier to evolve in a real application lifecycle.

## Tech stack

- Flutter SDK
- Dart
- Provider state management
- Material 3 UI
- Flutter Localizations / Intl
- SharedPreferences / repository pattern for data handling
- Flutter test and integration_test
- GitHub Actions for CI

## Requirements

Before running the project, make sure you have:

- Flutter 3.16.0 or newer
- Dart 3.0.0 or newer
- Android Studio or VS Code with Flutter support
- Git installed

## Installation

Clone the project and install dependencies:

```bash
git clone <your-repository-url>
cd test_app
flutter pub get
```

Run the app:

```bash
flutter run
```

You can also run it on a connected device or emulator.

## Testing

The project contains a complete testing suite covering multiple layers:

- Unit tests for models and providers
- Repository tests for task logic
- Widget tests for UI rendering
- Integration tests for navigation and user flows

Run all tests:

```bash
flutter test
```

Run coverage:

```bash
flutter test --coverage
```

Run static analysis:

```bash
flutter analyze
```

## CI/CD

The project includes a GitHub Actions workflow for automated validation. The pipeline is designed to:

- install Flutter dependencies
- run static analysis
- execute the test suite
- build the Android release APK

The workflow is defined in:

- .github/workflows/flutter_ci.yml

## Quality and production readiness

This project aims to meet a production-style quality standard by covering:

- maintainable architecture
- test coverage across app behavior
- localization support
- accessibility-conscious UI
- clean presentation and responsive layout
- CI validation for code quality

## Screenshots

Add screenshots in a docs or assets folder to illustrate the app UX. Recommended screenshots:

- Dashboard overview
- Task list view
- Add task form
- Task details
- Profile screen

## Changelog

### v1.2.0 - 2026-09-09
- Improved README and project documentation
- Stabilized provider lifecycle and navigation behavior
- Improved testing consistency
- Added better description of architecture and technical setup

### v1.1.0 - 2026-09-08
- Added basic dashboard, task list, profile, and add-task flows
- Implemented task providers and repository logic
- Added localization and theme structure

### v1.0.0 - 2026-09-01
- Initial Flutter app structure
- Basic task model and CRUD flow
- Initial screen and widget setup

## Roadmap

Planned future improvements:

- integrate persistent storage with SQLite or Hive
- add real authentication and session management
- fully optimize images and asset loading
- extend tests for edge cases and performance validation
- add APK/IPA release pipeline and deployment automation

## License

This project is intended for learning, portfolio, and demo purposes.

## Contact / project ownership

This repository is designed for study, demonstration, and technical evaluation. Replace the repository URL and project ownership information with your own GitHub profile or organization details before publishing publicly.

```bash
git remote set-url origin https://github.com/your-username/task-manager-app.git
```
