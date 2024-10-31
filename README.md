
# Flutter Starter Kit  

A Flutter starter kit helps to get a new project up and running with a solid foundation and essential components. Here’s a suggested structure for a Flutter starter kit that includes best practices, core dependencies, and modular organization:


## Project Structure

<details>   
   
```plaintext
├── lib/
│ ├── app/
│ │ ├── analytics/
│ │ ├── crashlytics/
│ │ ├── settings/
│ │ ├── app.dart
│ │ └── imports.dart
│ │
│ ├── main/
│ │ ├── _init.dart
│ │ ├── dev.dart
│ │ ├── production.dart
│ │ └── staging.dart
│ │
│ ├── src/
│ │ ├── common/
│ │ │ ├── _di/
│ │ │ ├── constants/
│ │ │ ├── data/
│ │ │ ├── enums/
│ │ │ ├── exceptions/
│ │ │ ├── extensions/
│ │ │ ├── localization/
│ │ │ ├── styles/
│ │ │ ├── utils/
│ │ │ └── widgets/
│ │ ├── features/
│ │ │ └── features.dart
│   │── screens/
│   │ └── screens.dart
```
</details>

## Folder and File Details
<details>
   
#### 1. `lib/app/`
   - **This folder contains the core components of the application.**
   - **`analytics/` and `crashlytics/`:** Store the code related to data analytics and crash reporting here.
   - **`settings/`:** Contains the general application settings.
   - **`app.dart`:** Main app file.
   - **`imports.dart`:** A file that includes the essential imports used across the application.

#### 2. `lib/main/`
   - **Contains the entry point files for different environments of the application.**
   - **`_init.dart`:** Contains the shared initialization across all environments.
   - **`dev.dart`, `production.dart`, `staging.dart`:** Files with specific configurations for development, production, and staging environments.

#### 3. `lib/src/`
   - **This folder contains most of the application's components.**
   
   - **`common/`:**
     - **`_di/`:** Dependency Injection management.
     - **`constants/`:** Stores general constants.
     - **`data/`:** Manages the application's data, such as data sources.
     - **`enums/`**: Holds enums used across the app.
     - **`exceptions/`**: Custom exception classes and handlers.
     - **`extensions/`**: Dart extensions to simplify code.
     - **`localization/`**: Localization setup and management
     - **`styles/`:** Manages visual styles and themes.
     - **`utils/`:** General utilities and helper functions.
     - **`widgets/`:** A collection of reusable UI components such as buttons, icons, text fields, etc.

   - **`features/`:**
     - **This folder contains the main features of the application.**
     - **`features.dart`:** Contains aggregated imports for the application's features.

   - **`screens/`:**
     - **This folder contains the various screens of the application.**
     - **`screens.dart`:** Contains aggregated imports for the screens.

</details>

## Feature Structure
The feature directory organizes code related to a specific part of the app. Here’s a simplified breakdown:
<details>
- **`features/your_feature/`**:
  The main directory for the feature.

- **`features/your_feature/application/`**:
  Contains business logic and services for the feature.
  - **`services/`**:
    - **`service_name.dart`**: is used to manage business logic and operations independently from data access and UI components

- **`features/your_feature/data/`**:
  Manages data-related tasks for the feature.
  - **`repositories/`**:
    - **`repository_name.dart`**: Handles data storage and retrieval.
  - **`source/`**:
    - **`local/`**: For local data sources (e.g., databases).
    - **`remote/`**: For remote data sources (e.g., APIs).

- **`features/your_feature/domain/`**:
  Defines core business logic and data models.
  - **`entities/`**: Contains data models or value objects.
  - **`i_repositories/`**: Interfaces for repositories.
  - **`params/`**: Parameters used in business logic.

- **`features/your_feature/presentation/`**:
  Manages the user interface and state.
  - **`cubit/`**: State management logic.
  - **`widgets/`**: UI components 

### Summary

- **`application/`**: Business logic and services.
- **`data/`**: Data handling (local and remote).
- **`domain/`**: Core business logic and models.
- **`presentation/`**: User interface and state management.
</details>

# Get Started
- **Run Development Environment**:
```dart
  flutter run --flavor dev -t lib/main/dev.dart
```
- **Run Staging Environment**:
```dart
  flutter run --flavor staging -t lib/main/staging.dart
```
- **Run Production Environment**:
```dart
  flutter run --flavor production -t lib/main/production.dart
```
- **DI Generator**:
```dart
flutter packages pub run build_runner build
```

<!-- dart run flutter_launcher_icons:main -f flutter_launcher_icons* -->



By: [Reham Ahmed](https://www.linkedin.com/in/rehamahmedibrahim/)
# flutter_starter_kit
