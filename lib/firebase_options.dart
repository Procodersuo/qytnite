// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBuCKy2RKmAPhltvIKnkeOddKYlfYhlAtc',
    appId: '1:781494527759:web:5582e22826c93d8b02407a',
    messagingSenderId: '781494527759',
    projectId: 'qytnite-c487d',
    authDomain: 'qytnite-c487d.firebaseapp.com',
    storageBucket: 'qytnite-c487d.appspot.com',
    measurementId: 'G-THFRFDQVFQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIpO5MDS34T85me18jVI1gpSum3PV12oo',
    appId: '1:781494527759:android:5ca41cbd9b53277602407a',
    messagingSenderId: '781494527759',
    projectId: 'qytnite-c487d',
    storageBucket: 'qytnite-c487d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCqltF0dXkPERbbbFZM3UxwxaKFESbcXEg',
    appId: '1:781494527759:ios:3c06528cf4a1e41b02407a',
    messagingSenderId: '781494527759',
    projectId: 'qytnite-c487d',
    storageBucket: 'qytnite-c487d.appspot.com',
    iosBundleId: 'com.example.qytnite',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCqltF0dXkPERbbbFZM3UxwxaKFESbcXEg',
    appId: '1:781494527759:ios:3c06528cf4a1e41b02407a',
    messagingSenderId: '781494527759',
    projectId: 'qytnite-c487d',
    storageBucket: 'qytnite-c487d.appspot.com',
    iosBundleId: 'com.example.qytnite',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBuCKy2RKmAPhltvIKnkeOddKYlfYhlAtc',
    appId: '1:781494527759:web:85a203d8338dd78d02407a',
    messagingSenderId: '781494527759',
    projectId: 'qytnite-c487d',
    authDomain: 'qytnite-c487d.firebaseapp.com',
    storageBucket: 'qytnite-c487d.appspot.com',
    measurementId: 'G-S11P27C3H9',
  );
}
