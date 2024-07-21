# BurningBros's Flutter Developer Challenge
This is a simple project to submit for BurningBros's Flutter Developer test.

## Technologies
- Flutter 3.22.3, Dart 3.4.4, channel stable
    * State management: flutter_bloc, freezed.
    * Dependency injection: get_it, injectable.
    * Local storage: hive_flutter.
    * Networking: dio, retrofit.
    * Multi-language: handmade.
    * Navigation: handmade.
    * Project structure: Clean Architecture (feature first)

## Main features
- Screen:
    * Splash screen: init global data.
    * Home screen: fetch, search, save favorite products.
    * Setting screen: change theme, language.
- Exception handling: API call, app errors, end reached, no internet.
- Caching: network image, caching first 20 products.
- Animations: smooth and fluid.

## Installation
Please install [Flutter](https://docs.flutter.dev/get-started/install) before starting

Clone this project in CMD:
```bash
git clone https://github.com/TranDKhoi/burningbros-assignment.git
```
Open project with you favorite IDE, then run this command:
```bash
flutter pub get
```
Next:
```bash
dart run build_runner build --delete-conflicting-outputs
```
Finally:
```bash
flutter run --release
```

## Preview
<img src="https://github.com/user-attachments/assets/a6978158-878d-4fe2-ad22-03269a911899" width="200"/>
<img src="https://github.com/user-attachments/assets/d2f10bd4-53d4-40da-bd65-7da8289f5d62" width="200"/>
<img src="https://github.com/user-attachments/assets/a7b7584e-1d2d-430e-a102-2ceb9b8f0b2f" width="200"/>



