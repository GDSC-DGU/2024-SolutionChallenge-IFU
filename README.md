# 2024-SolutionChallenge-IFU

2024 GDSC Solution Challenge IFU Repository.

# GitHub Role

This Repository follows the following Convention.

## Commit Convention

| Commit type      | Description                                                   |
| ---------------- | ------------------------------------------------------------- |
| Feat             | Add new features                                              |
| Fix              | Fix bugs                                                      |
| Docs             | Modifying documents                                           |
| Style            | Code formatting, missing semicolons, no change of code itself |
| Refactor         | Code Refactoring                                              |
| Test             | Test code, add refactoring test code                          |
| Chore            | Modifying Package Manager, Other Modifications ex) .gitignore |
| Design           | Change user UI design such as CSS                             |
| Comment          | Add and change required annotations                           |
| Rename           | Only to modify or move a file or folder name                  |
| Remove           | If you have only done the job of deleting a file              |
| !BREAKING CHANGE | For large API changes                                         |
| !HOTFIX          | If you need to fix a fatal bug in a hurry                     |

## PR Convention

| Icon | Code                       | Description                        |
| ---- | -------------------------- | ---------------------------------- |
| 🧑🏻‍🎨   | :art                       | Structure/Form Improvement of Code |
| ⚡️  | :zap                       | Performance Improvement            |
| 🔥   | :fire                      | Delete Code/File                   |
| 🐛   | :bug                       | bug fix                            |
| 🚑   | :ambulance                 | Urgent Correction                  |
| ✨   | :sparkles                  | New Features                       |
| 💄   | :lipstick                  | UI/Style File Add/Modify           |
| ⏪   | :rewind                    | Revolve Changes                    |
| 🔀   | :twisted_rightwards_arrows | Branch Merger                      |
| 💡   | :bulb                      | add/modify annotations             |
| 🗃    | :card_file_box             | Database-related modifications     |

# How to use?

## Get Dependency

```sh
flutter pub get
```

## Make .env files in assets/config/.env

We require the following environmental variables.

```
GEMINI_API_KEY = It is your Gemini api key
CONCEPT_WEB_URL = It is IFU-Web url
```

## Run flutter which OS you want

Recommend OS is IOS or Android

```sh
flutter run IOS
flutter run Android
```

If you want to run IFU-Web

```
yarn && yarn start
```

## IFU-Hybrid Dependencies

```
flutter:
  sdk: flutter
cupertino_icons: ^1.0.2
flutter_native_splash: ^2.3.10
get: ^4.6.6
flutter_localization: ^0.2.0
dotenv: ^4.2.0
flutter_dotenv: ^5.1.0
intl: ^0.18.1
flutter_svg: ^2.0.9
webview_flutter: ^4.7.0
flutter_chat_ui:
  git:
    url: https://github.com/kurtyoon/flutter_chat_ui.git
    ref: main
dio: ^5.4.1
speech_to_text: ^6.6.0
flutter_tts: ^3.8.5
uuid: ^4.3.3
google_generative_ai: ^0.2.0
```

## IFU-Web Dependencies

```
@angular/animations: ^17.1.0,
@angular/common: ^17.1.0,
@angular/compiler: ^17.1.0,
@angular/core: ^17.1.0,
@angular/forms: ^17.1.0,
@angular/platform-browser: ^17.1.0,
@angular/platform-browser-dynamic: ^17.1.0,
@angular/router: ^17.1.0,
rxjs: ~7.8.0,
tslib: ^2.3.0,
zone.js: ~0.14.3
```
