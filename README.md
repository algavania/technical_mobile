# Flutter Project

This project is a Flutter application that implements Clean Architecture with a focus on modularity, scalability, and maintainability. The app contains multiple features like **authentication**, **home page management**, **user profiles**, **settings**, and **splash screens**. Additionally, it supports internationalization with localization files.

## Download App
You can download the latest version of the app from the following links:
- [Google Drive](https://drive.google.com/drive/folders/1SV53XingyexSDlGZb_TgGkF-d42mVoe6?usp=sharing)

## Features

* **Authentication**: User login, registration, password reset, and profile management.
* **Home**: User dashboard with pagination support.
* **Profile**: Edit user profile and password.
* **Splash**: Custom splash screen on app launch.
* **Clean Architecture**: This app follows **Clean Architecture** principles, making the codebase easy to maintain and scale.

## Project Structure

Here’s an overview of the project structure:

```
.
├── app                        # App-related files and UI views
├── bootstrap.dart             # App initialization
├── core                       # Core utilities, themes, services
├── data                       # Data models, API responses, pagination
├── error                      # Custom error handling and exceptions
├── features                   # Feature modules (auth, home, profile, etc.)
│   ├── auth                   # Authentication-related files
│   ├── home                   # Home page related files
│   ├── pages                  # Pages for each feature
│   ├── profile                # Profile management screens
│   ├── splash                 # Splash screen
│   └── user                   # User-related files
├── injector                   # Dependency Injection setup and modules
├── l10n                       # Localization files
├── routes                     # Routing and navigation setup
├── util                       # Utility classes and functions
└── widgets                    # Custom reusable widgets
```

## Flavors

This project supports **3 flavors**:

* **Development**
* **Staging**
* **Production**

To run the desired flavor, either use the launch configuration in **VSCode** or **Android Studio** or use the following commands in your terminal.

### Running the App

#### Development

```sh
flutter run --flavor development --target lib/main_development.dart
```

#### Staging

```sh
flutter run --flavor staging --target lib/main_staging.dart
```

#### Production

```sh
flutter run --flavor production --target lib/main_production.dart
```

### Flavor Explanation

* **Development**: Used for development builds, often with debugging enabled.
* **Staging**: Used for pre-production testing, typically connected to a staging environment.
* **Production**: The final build for production, optimized for release and connected to the production environment.

## Installation

1. **Clone the Repository**

   Clone this repository to your local machine:

   ```sh
   git clone https://github.com/algavania/technical_mobile
   cd your-repository
   ```

2. **Install Dependencies**

   Run the following command to install dependencies:

   ```sh
   flutter pub get
   ```

3. **Run the App**

   After installing dependencies, you can run the app with the appropriate flavor as described above.

## Configuration

This project uses **GetIt** for dependency injection, **AutoRouter** for routing, **Dio** for network requests, and follows **Clean Architecture** principles for organizing code into layers such as `data`, `domain`, and `presentation`.

### Core Dependencies

* **Dio**: For making HTTP requests.
* **Freezed**: For immutable data classes and handling JSON serialization.
* **GetIt**: For dependency injection.
* **Bloc**: For state management using the BLoC pattern.
* **AutoRouter**: For routing.

### Localization

The app includes support for multiple languages. Localization files can be found in the `l10n` folder with `.arb` files, and the app is set to load the correct language based on the user's preferences.

Here's a **README** section to instruct users on how to create the `key.properties` file for your Flutter project, with the necessary configurations for signing:

---

## Creating `key.properties` for Keystore Configuration

Follow the steps below to create the `key.properties` file for signing your Flutter app.

### 1. **Download the Keystore File**

* The keystore file (`technical-keystore.jks`) is available for download from the following Google Drive link:

  [Download Keystore from Google Drive](https://drive.google.com/file/d/1Go96cNSpjjapBj2wx3hDfnUOp2N7EviK/view?usp=sharing)

* Download the keystore file to your local machine.

### 2. **Create `key.properties` File**

* In your Flutter project, navigate to the `android/` folder.
* Create a new file named `key.properties`.

  The content of the file should be as follows:

  ```properties
  storePassword=password
  keyPassword=password
  keyAlias=upload
  storeFile=your-path/technical-keystore.jks
  ```

   * **storePassword**: The password for the keystore (`password`).
   * **keyPassword**: The password for the key alias inside the keystore (`password`).
   * **keyAlias**: The alias of the key (`upload`).
   * **storeFile**: The full path to the keystore file on your local machine. Replace it with the actual path where you downloaded the keystore.
