import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCPfO_sAd2ZKPNosTX0KQ2CmWyI5AW9kAc",
            authDomain: "back-buddy-lezn34.firebaseapp.com",
            projectId: "back-buddy-lezn34",
            storageBucket: "back-buddy-lezn34.firebasestorage.app",
            messagingSenderId: "442552611868",
            appId: "1:442552611868:web:d1d6eef9687d95e91b5bd9"));
  } else {
    await Firebase.initializeApp();
  }
}
