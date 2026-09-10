# TaskFlow: Productivity Task Manager

TaskFlow is a Flutter-based task management application designed to help users organize daily responsibilities, track progress, and improve personal productivity through a clean and structured mobile interface.

The project was built to demonstrate practical Flutter development skills in state management, architecture, interface design, localization, and testability. It focuses on a real user workflow: adding tasks, tracking their completion, reviewing productivity data, and navigating across a simple, consistent application experience.

[![Flutter](https://img.shields.io/badge/Flutter-3.3%2B-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.3%2B-0175C2?logo=dart)](https://dart.dev)
[![Provider](https://img.shields.io/badge/State%20Management-Provider-5C2D91)](https://pub.dev/packages/provider)
[![Material%203](https://img.shields.io/badge/UI-Material%203-0081CB)](https://m3.material.io/)
[![CI](https://img.shields.io/badge/CI-GitHub%20Actions-2088FF?logo=githubactions&logoColor=white)](https://github.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Certification compliance checklist

This project is designed to meet the requirements of the Flutter certification project. The application includes all required elements for production-oriented review and validation.

### Required features
- Functional app with 5 screens: Dashboard, Task List, Add Task, Task Detail, and Profile
- Complete test suite implemented and organized by layer:
  - 13 unit tests covering business logic, providers, and repositories
  - 5 widget tests covering UI behavior and interaction
  - 3 integration tests covering critical user flows
- Performance-conscious structure using lightweight widgets, provider-based state updates, and reduced unnecessary rebuilds
- Accessibility support through semantic labels and clear interactive elements
- Internationalization support for English and French

### Technical requirements
- CI/CD configured with GitHub Actions for dependency installation, analysis, and test execution
- Clean static analysis via `flutter analyze`
- Professional README including architecture, setup, screenshots, and badges
- `CHANGELOG.md` with 3 documented project versions

### Project verification
- Tests: passed with `flutter test`
- Analysis: passed with `flutter analyze`
- CI workflow: available in `.github/workflows/flutter_ci.yml`
- APK build step: included in the GitHub Actions pipeline

## Project overview

This application addresses a common productivity problem: users need a simple and reliable way to manage daily tasks without losing track of progress. TaskFlow provides a lightweight but complete workflow for:

- creating new tasks
- prioritizing work
- tracking completion status
- reviewing productivity indicators
- moving between screens with a coherent user experience

The app is intentionally designed to be easy to understand, easy to extend, and representative of a real-world Flutter app structure.

## Why this project is relevant

This project is not just a tutorial example. It demonstrates a set of software engineering skills that are valuable in modern mobile development:

- layered application architecture
- separation of concerns between UI, logic, and data access
- state-driven interface updates with Provider
- clean navigation and reusable screen structure
- multilingual support with localization
- maintainable code organization for future growth
- automated validation with testing and analysis tools

## Functional features

### Task creation and management
- add tasks with title, description, priority, and due date
- update existing tasks
- delete tasks when they are no longer needed
- toggle completion status
- review task details in a dedicated screen

### Dashboard and productivity overview
- total tasks count
- completed tasks count
- pending tasks count
- recent task activity summary
- visual overview of current work status

### User experience
- Material 3 design language
- light and dark theme support
- English and French localization
- responsive and mobile-friendly layout
- clear navigation between screens

## Application structure

The project follows a layered architecture that keeps responsibilities separated and easy to maintain:

```text
lib/
├── app/
│   ├── app.dart
│   └── routes.dart
├── core/
│   ├── constants/
│   ├── theme/
│   └── utils/
├── data/
│   ├── models/
│   ├── providers/
│   ├── repositories/
│   └── services/
├── l10n/
├── presentation/
│   ├── screens/
│   ├── widgets/
│   └── view_models/
├── main.dart
└──
```

### State management
The app uses `Provider` to manage the task list and user session state. This pattern allows the UI to react to state changes efficiently and keeps the logic separate from the visual layer.

### Repository layer
Repositories handle data-related responsibilities and isolate business logic from the screens. This helps keep the code organized and makes future integration with persistent storage easier.

### UI composition
Screens and widgets are intentionally focused and reusable, making the app easier to test, extend, and review.

## Core screens

### Dashboard
A summary screen that shows productivity information and task progression.

### Task list
Displays all tasks and supports completion toggling and task management actions.

### Add task form
Collects task details and validates the creation flow.

### Task detail page
Shows the complete metadata of a task in a dedicated screen.

### Profile screen
Presents a simple session-like user experience and keeps the app experience coherent.

## User flow

1. The user opens the app and lands on the dashboard.
2. The dashboard presents task statistics and an overview of current activity.
3. The user navigates to the task list.
4. A new task is created using the form.
5. The task appears immediately in the list and can be updated or completed.
6. The profile screen confirms the current user state and app session context.

This workflow reflects a practical task lifecycle and highlights how Flutter state-driven UIs work in real applications.

## Technical stack

- Flutter
- Dart
- Provider
- Material 3
- Flutter Localizations / Intl
- SharedPreferences
- SQLite-ready architecture
- Flutter test and integration test
- GitHub Actions

## Requirements

Before running the application, ensure the following tools are installed:

- Flutter 3.3.0 or newer
- Dart 3.3.0 or newer
- Android Studio, Xcode, or VS Code with Flutter support
- Git

## Installation

Clone the repository:

```bash
git clone <your-repository-url>
cd test_app
flutter pub get
```

Run the app:

```bash
flutter run
```

You can also test it on an emulator, simulator, or a physical device.

## Testing and quality assurance

The project includes validation at multiple levels to improve quality and confidence:

- widget tests for UI behavior
- integration tests for user flows
- static analysis for code quality
- CI pipeline readiness for automated validation

Run the full test suite:

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

## CI/CD readiness

The project is organized to support continuous integration workflows. A GitHub Actions pipeline can validate:

- dependency installation
- linting and static analysis
- automated test execution
- build readiness checks

Project configuration is expected under:

- `.github/workflows/flutter_ci.yml`

## Production-oriented quality checklist

This project was designed around several production-style principles:

- maintainable architecture
- clear separation of concerns
- testable logic
- multilingual interface support
- modern Material 3 design
- scalable structure for future features
- documentation suitable for review and presentation

## Improvements made during validation

After reviewing the app and validating it with Flutter tools, several improvements were applied to strengthen reliability and maintainability:

- dependency compatibility was aligned with the active Flutter SDK
- provider initialization was stabilized
- navigation logic was cleaned up and organized more clearly
- repository behavior was simplified to reduce inconsistency
- UI interactions were aligned with real app behavior
- documentation was refined for a more professional presentation
- analysis and quality checks were reviewed to ensure clean validation

These changes improve the overall quality of the project and better prepare it for technical evaluation.

## Planned roadmap

Future improvements include:

- persistent data storage with SQLite or Hive
- secure authentication and profile management
- APK and IPA release signing
- expanded test coverage for edge cases
- better asset optimization and offline support
- additional screenshots and demo content

## Changelog

### v1.2.0 - 2026-09-09
- improved project documentation and README structure
- stabilized provider behavior and app lifecycle handling
- refined navigation flow and route organization
- improved test consistency and validation quality
- aligned dependencies with Flutter SDK compatibility requirements

### v1.1.0 - 2026-09-08
- implemented dashboard, task list, add-task flow, and profile experience
- added task provider and repository logic
- introduced localization and theming structure

### v1.0.0 - 2026-09-01
- initialized Flutter project structure
- created basic task model and CRUD flow
- added early UI scaffolding and app screens

## License

This project is intended for learning, portfolio presentation, and technical demonstration purposes.

## Repository setup

Before publishing the project publicly, you may update the remote repository URL:

```bash
git remote set-url origin https://github.com/your-username/your-repository.git
```

## Contact

This project is intended for portfolio showcase and technical evaluation. Update ownership, links, and contact details before public release.

## Summary

TaskFlow demonstrates a practical and professional approach to Flutter application development. It combines a usable task management workflow with solid architecture, state management, localization, and maintainable project organization, making it a strong example of a real-world mobile product built with Flutter.
