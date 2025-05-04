# ChatUI
This is a demo mobile app created by CLEAN Architecture and BLoC state management

### Require
- [Vscode](https://code.visualstudio.com/)
- [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [FVM](https://fvm.app/docs/getting_started/installation)

### Optional
- [Bloc extension](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc)

### Setup
1. Install [FVM](https://fvm.app/docs/getting_started/installation)
2. Git clone project
3. Open project with Vscode, check ".fvm/fvm_config.json" file, check the "flutterSdkVersion" inside and use ```fvm use <flutterSdkVersion_you_saw>```
4. Restart vscode

### Auto build json_serializable, freezed, auto_route_generator, hive_generator 
```fvm flutter pub run build_runner watch --delete-conflicting-outputs```

### Flavor
| Flavor| Package name | App Name | Endpoint |
|--|--|--|--|
| MOCK  | `app.lufapytanie.mock`| ChatUI Mock | local assets json |

### Build app
#### IOS
- ```fvm flutter build ipa --release --split-debug-info --obfuscate --flavor mock -t lib/main_mock.dart```

#### Android
- ```fvm flutter build apk --release --split-debug-info --obfuscate --flavor mock -t lib/main_mock.dart```
