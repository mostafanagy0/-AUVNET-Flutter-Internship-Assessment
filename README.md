# AUVNET

A clean and well-structured Flutter project following **Clean Architecture** principles.

## 🚀 Getting Started

This project serves as a base structure for scalable and maintainable Flutter apps.

---

## 📁 Project Structure (Clean Architecture)

```bash
lib/
│
├── core/
│   ├── di/                         # Dependency Injection
│   │   └── service_locator.dart
│   ├── services/                  # Shared services
│   │   ├── auth/                  # Auth services
│   │   │   └── auth_service.dart
│   │   └── database/              # Database services
│   │       └── database_service.dart
│   ├── errors/                    # Failure / Exceptions
│   │   ├── failure.dart
│   │   └── exceptions.dart
│   ├── helpers/                   # Helper functions/classes
│   │   └── formatter_helper.dart
│   ├── routing/                   # App routes
│   │   ├── app_router.dart
│   │   └── route_names.dart
│   ├── utils/                     # Constants / Styles
│   │   ├── app_constants.dart
│   │   ├── app_styles.dart
│   │   └── app_colors.dart
│   └── widgets/                   # Reusable widgets
│       ├── custom_button.dart
│       ├── custom_text_field.dart
│       └── loading_indicator.dart
│
├── features/
│   └── auth/                      # Example feature
│       ├── data/
│       │   ├── models/
│       │   │   └── user_model.dart
│       │   └── repositories/
│       │       └── auth_repo_impl.dart
│       ├── domain/
│       │   ├── entities/
│       │   │   └── user_entity.dart
│       │   └── repositories/
│       │       └── auth_repository.dart
│       └── presentation/
│           ├── bloc/
│           │   ├── auth_bloc.dart
│           │   ├── auth_event.dart
│           │   └── auth_state.dart
│           ├── views/
│           │   ├── login_screen.dart
│           │   ├── signup_screen.dart
│           │   └── widgets/
│           │       ├── login_form.dart
│           │       └── signup_form.dart
│
└── main.dart                      # Entry point
