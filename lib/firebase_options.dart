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
    apiKey: 'AIzaSyAdOk_aVuAB6LfmSxpESc7YlUsAIGB5uIc',
    appId: '1:109908091837:web:1994aa77a6a0c3bb8228d4',
    messagingSenderId: '109908091837',
    projectId: 'fir-sample-app-9b0ed',
    authDomain: 'fir-sample-app-9b0ed.firebaseapp.com',
    storageBucket: 'fir-sample-app-9b0ed.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHmH7-TOi6qn3tD6XUr73SK6O-4LlczCk',
    appId: '1:109908091837:android:955a932280b5c6c08228d4',
    messagingSenderId: '109908091837',
    projectId: 'fir-sample-app-9b0ed',
    storageBucket: 'fir-sample-app-9b0ed.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkpx-GzojkNkQIpqHdc5FTiffs086N9EQ',
    appId: '1:109908091837:ios:2fa7648633ebf0858228d4',
    messagingSenderId: '109908091837',
    projectId: 'fir-sample-app-9b0ed',
    storageBucket: 'fir-sample-app-9b0ed.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkpx-GzojkNkQIpqHdc5FTiffs086N9EQ',
    appId: '1:109908091837:ios:2fa7648633ebf0858228d4',
    messagingSenderId: '109908091837',
    projectId: 'fir-sample-app-9b0ed',
    storageBucket: 'fir-sample-app-9b0ed.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAdOk_aVuAB6LfmSxpESc7YlUsAIGB5uIc',
    appId: '1:109908091837:web:33d16500d7b9662c8228d4',
    messagingSenderId: '109908091837',
    projectId: 'fir-sample-app-9b0ed',
    authDomain: 'fir-sample-app-9b0ed.firebaseapp.com',
    storageBucket: 'fir-sample-app-9b0ed.appspot.com',
  );
}