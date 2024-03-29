// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBjumnGQ_Ic78rNDzB_vOBFO2sRdr2rn0k',
    appId: '1:1030738894261:web:6e5b6fe2fe132a5f9b4dfc',
    messagingSenderId: '1030738894261',
    projectId: 'time-varience-authority-49dcd',
    authDomain: 'time-varience-authority-49dcd.firebaseapp.com',
    storageBucket: 'time-varience-authority-49dcd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPe9RiaKULhNUpAiiVlBeoSVkB03ZlFRo',
    appId: '1:1030738894261:android:2569dd8c2122abd09b4dfc',
    messagingSenderId: '1030738894261',
    projectId: 'time-varience-authority-49dcd',
    storageBucket: 'time-varience-authority-49dcd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5Pn2RGEikYMD8uzhz8cllrbW4eHuUdQE',
    appId: '1:1030738894261:ios:9a27351c4142f9899b4dfc',
    messagingSenderId: '1030738894261',
    projectId: 'time-varience-authority-49dcd',
    storageBucket: 'time-varience-authority-49dcd.appspot.com',
    iosClientId: '1030738894261-v8s4l2a0bj3kg09vjqdrfpoqov78as2l.apps.googleusercontent.com',
    iosBundleId: 'com.example.tvaTimeVarienceAuthority',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5Pn2RGEikYMD8uzhz8cllrbW4eHuUdQE',
    appId: '1:1030738894261:ios:70150229eafbf63e9b4dfc',
    messagingSenderId: '1030738894261',
    projectId: 'time-varience-authority-49dcd',
    storageBucket: 'time-varience-authority-49dcd.appspot.com',
    iosClientId: '1030738894261-nh0acdnrb3ov7ie2d88fqctd1tgha2dd.apps.googleusercontent.com',
    iosBundleId: 'com.example.tvaTimeVarienceAuthority.RunnerTests',
  );
}
