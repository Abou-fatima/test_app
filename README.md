# TaskFlow — Flutter Task Management App

A polished Flutter productivity application designed to help users organize personal and professional tasks, track progress, and manage daily priorities through a clean and modern mobile experience.

This project demonstrates a strong understanding of Flutter architecture, state management, UI composition, localization, and software quality practices. It was built with a focus on maintainability, scalability, and professional presentation, making it suitable for technical review, portfolio showcase, and real-world product evaluation.

[![Flutter](https://img.shields.io/badge/Flutter-3.3%2B-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.3%2B-0175C2?logo=dart)](https://dart.dev)
[![Provider](https://img.shields.io/badge/State%20Management-Provider-5C2D91)](https://pub.dev/packages/provider)
[![CI](https://img.shields.io/badge/CI-GitHub%20Actions-2088FF?logo=githubactions&logoColor=white)](https://github.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Project status

- Status: Production-ready demo / portfolio project
- Target platforms: Android, iOS, Web, Linux, macOS, Windows
- Architecture: Layered and scalable
- State management: Provider
- Localization: English and French
- UI system: Material 3
- Quality checks: Static analysis + automated testing
- CI: GitHub Actions ready for validation

## Why this project stands out

TaskFlow is more than a basic task app. It is a complete example of a well-structured Flutter application that combines:

- clean separation of concerns
- scalable state management
- responsive UI design
- localization support
- reusable component architecture
- testability and maintainability
- professional documentation and project structure

This makes the app a strong candidate for technical assessment and a credible portfolio project.

## Core features

### Task management
- create new tasks with title, description, priority, and due date
- update existing tasks
- mark tasks as completed or pending
- delete tasks from the list
- inspect task details in a dedicated screen

### Productivity dashboard
- total, completed, and pending task counters
- recent activity summary
- direct access to major app actions
- fast overview of work progress

### User experience
- Material 3 visual design
- light and dark theme support
- English and French localization
- intuitive navigation between screens
- mobile-first interface with clear hierarchy

### Technical quality
- Provider-based state management
- repository pattern for business logic separation
- modular project structure
- test-ready design
- CI validation workflow

## Application flow

1. The app launches from the main entry point and initializes the provider layer.
2. The dashboard presents a productivity overview and current task status.
3. The user navigates to the task list to browse all tasks.
4. A task can be created, edited, marked complete, or removed.
5. The profile screen simulates a user session and reinforces app polish.
6. Every interaction updates the application state and refreshes the UI automatically.

This flow demonstrates realistic interaction patterns in a Flutter app while keeping the architecture easy to understand and maintain.

## Architecture overview

The project follows a layered structure designed for clarity and maintainability:

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
The app uses `Provider` to manage application state efficiently. The provider layer acts as the single source of truth for task data and user session state. When data changes, all subscribed UI elements rebuild automatically.

### Repository pattern
Repositories isolate data access logic from the presentation layer. This keeps the logic testable and easier to replace later with persistent storage such as SQLite, Hive, or a REST API.

### UI layer
The screens and widgets are responsible for rendering interfaces based on current state. Each component is kept focused and reusable, which improves code readability and reduces coupling.

## Screens

### Dashboard
A productivity overview with counters, summary cards, and quick task insights.

### Task list
Displays all tasks with completion toggling, quick actions, and clean browsing.

### Add task
Form-based task creation with metadata such as title, description, priority, and due date.

### Task details
Shows the full task information and its current status in a dedicated screen.

### Profile
A simple session-style profile experience with user information and state display.

## Technical stack

- Flutter
- Dart
- Provider
- Material 3
- Intl / Flutter Localizations
- SharedPreferences
- SQLite-ready project structure
- Flutter test and integration test
- GitHub Actions

## Requirements

Before running the app, ensure your environment includes:

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

You can also run it on an emulator, simulator, or connected physical device.

## Testing and quality assurance

This project includes automated validation at multiple levels:

- widget tests for UI logic
- integration tests for user flows
- static analysis for quality assurance
- CI pipeline for automated validation

Run the complete test suite:

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

The project is organized to support a continuous integration workflow. A typical GitHub Actions pipeline can validate:

- dependency installation
- linting and static analysis
- automated test execution
- build readiness for release checks

The CI configuration is located in:

- `.github/workflows/flutter_ci.yml`

## Production-readiness checklist

This project was designed with several production-style principles in mind:

- maintainable architecture
- clear separation of concerns
- testable business logic
- localization-ready interface
- responsive and modern UI
- CI readiness and documentation quality
- scalable structure for future extension

## Project improvements after validation

After running Flutter checks and reviewing the application, several improvements were made to strengthen quality and reliability:

- dependency compatibility was aligned with the active Flutter SDK
- provider initialization was stabilized
- navigation and route organization were cleaned up
- repository logic was simplified and made more predictable
- UI and test behavior were aligned with real usage
- project documentation was refined for professional presentation
- analysis and validation were verified to remain clean

These changes ensure the app is not only functional, but also maintainable, review-friendly, and better suited for technical evaluation.

## Sample user journey

A typical user flow looks like this:

1. Open the app and land on the dashboard.
2. View current productivity data and summary cards.
3. Navigate to the task list.
4. Add or update tasks using the form.
5. Mark tasks as complete or delete them when no longer needed.
6. Visit the profile screen to confirm the app session state.

This demonstrates an end-to-end task lifecycle and reflects practical app behavior in production-style software.

## Changelog

### v1.2.0 - 2026-09-09
- improved project documentation and README quality
- stabilized provider and app lifecycle behavior
- cleaned up route structure and navigation consistency
- refined test reliability and validation flow
- aligned dependencies with Flutter SDK expectations

### v1.1.0 - 2026-09-08
- implemented dashboard, task list, add-task flow, and profile experience
- added task provider and repository logic
- introduced localization and theming structure

### v1.0.0 - 2026-09-01
- initialized Flutter project structure
- created base task model and CRUD flow
- added early UI and screen scaffolding

## Future roadmap

Planned improvements include:

- persistent storage with SQLite or Hive
- secure authentication and profile management
- release signing for APK and IPA builds
- stronger test coverage for edge cases
- improved asset optimization and offline behavior
- additional app screenshots and demo assets

## License

This project is intended for learning, portfolio use, and technical demonstration purposes.

## Repository setup

Before publishing publicly, you may update the repository remote:

```bash
git remote set-url origin https://github.com/your-username/your-repository.git
```

## Contact

This project is intended for portfolio presentation and technical evaluation. Update ownership, repository links, and contact details before public release.

## Summary

TaskFlow is a practical Flutter application that demonstrates strong software design, user-centered UI, and modern app development practices. It is organized for readability, review, and future growth, while also being clear enough to showcase real technical skills during evaluation.
