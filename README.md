# Flutter User List App - Setup Instructions

## Prerequisites

Before you begin, ensure you have the following installed:
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio or VS Code
- Git (optional)
- A compatible IDE (Android Studio or VS Code with Flutter extension)
- An Android emulator or iOS simulator (or a physical device)

## Project Setup

### 1. Create New Flutter Project

```bash
flutter create user_list_app
cd user_list_app
```

### 2. Configure Dependencies

Replace the contents of `pubspec.yaml` with:

```yaml
name: user_list_app
description: A Flutter application that fetches and displays user data
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
  provider: ^6.0.5
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0

flutter:
  uses-material-design: true
```

### 3. Install Dependencies

```bash
flutter pub get
```

### 4. Project Structure

Create the following directory structure:

```
lib/
├── models/
│   └── user.dart
├── providers/
│   └── user_provider.dart
├── screens/
│   └── user_list_screen.dart
├── services/
│   └── api_service.dart
└── main.dart
```

### 5. File Creation

1. Copy each file's content from the provided code into its respective location in the project structure.

2. Ensure proper file naming:
   - `lib/models/user.dart`
   - `lib/providers/user_provider.dart`
   - `lib/screens/user_list_screen.dart`
   - `lib/services/api_service.dart`
   - `lib/main.dart`

## Running the Project

### 1. Start an Emulator/Simulator

**For Android:**
```bash
# List available emulators
flutter emulators

# Start an emulator
flutter emulators --launch <emulator_id>
```

**For iOS (Mac only):**
```bash
# Open iOS Simulator
open -a Simulator
```

### 2. Run the Application

```bash
# Run in debug mode
flutter run

# Run in release mode
flutter run --release
```

## Troubleshooting

If you encounter any issues:

1. Verify Flutter installation:
```bash
flutter doctor
```

2. Clean the project:
```bash
flutter clean
flutter pub get
```

3. Check for common errors:
   - Ensure all files are in the correct locations
   - Verify that the pubspec.yaml file is properly formatted
   - Check that all imports are correct
   - Verify that your IDE has recognized the Flutter SDK

## Testing the Application

The application includes:
- Pull-to-refresh functionality: Drag down from the top of the list
- Search functionality: Use the search bar at the top
- Error handling: Try enabling airplane mode to test error states

## Development Notes

- The app uses Provider for state management
- API calls are made using the http package
- Error handling includes user-friendly messages and retry options
- The UI is responsive and follows Material Design guidelines

## Additional Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Provider Package Documentation](https://pub.dev/packages/provider)
- [HTTP Package Documentation](https://pub.dev/packages/http)

## Getting Help

If you encounter any issues:
1. Check the Flutter documentation
2. Review the error messages in the console
3. Verify network connectivity for API calls
4. Ensure all dependencies are properly installed

## Next Steps

After successfully running the application, you can:
1. Modify the UI design in `user_list_screen.dart`
2. Add additional features to the `UserProvider`
3. Enhance error handling in `api_service.dart`
4. Add unit tests for the models and providers
