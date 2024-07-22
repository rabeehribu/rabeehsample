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
    apiKey: 'AIzaSyDfwsB1eid6hgjh16J1SylXI2VaDRbmWwA',
    appId: '1:745761179697:web:cad501c4587be11d01ad10',
    messagingSenderId: '745761179697',
    projectId: 'plants-app-adc25',
    authDomain: 'plants-app-adc25.firebaseapp.com',
    storageBucket: 'plants-app-adc25.appspot.com',
    measurementId: 'G-NJTLHC6RL1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBcSCARSTeW0WbK9ZLqWvCKCTJv1gCLSw',
    appId: '1:745761179697:android:032c5c6005534ef901ad10',
    messagingSenderId: '745761179697',
    projectId: 'plants-app-adc25',
    storageBucket: 'plants-app-adc25.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9NlGwHtxBgKl7xprKAKJjc2VhbEg_8qI',
    appId: '1:745761179697:ios:1b8faf2b99a3534301ad10',
    messagingSenderId: '745761179697',
    projectId: 'plants-app-adc25',
    storageBucket: 'plants-app-adc25.appspot.com',
    iosBundleId: 'com.example.myFirstApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB9NlGwHtxBgKl7xprKAKJjc2VhbEg_8qI',
    appId: '1:745761179697:ios:1b8faf2b99a3534301ad10',
    messagingSenderId: '745761179697',
    projectId: 'plants-app-adc25',
    storageBucket: 'plants-app-adc25.appspot.com',
    iosBundleId: 'com.example.myFirstApplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDfwsB1eid6hgjh16J1SylXI2VaDRbmWwA',
    appId: '1:745761179697:web:3e8580adcbe0b14001ad10',
    messagingSenderId: '745761179697',
    projectId: 'plants-app-adc25',
    authDomain: 'plants-app-adc25.firebaseapp.com',
    storageBucket: 'plants-app-adc25.appspot.com',
    measurementId: 'G-TEPLS29Q6J',
  );
}