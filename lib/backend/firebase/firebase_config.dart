import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA60DUqhFoqNXu5GcF5oDECCCVRY3ygIak",
            authDomain: "icicidemoproject.firebaseapp.com",
            projectId: "icicidemoproject",
            storageBucket: "icicidemoproject.appspot.com",
            messagingSenderId: "488134673586",
            appId: "1:488134673586:web:31f2b297ccda5dbc33f5ab",
            measurementId: "G-E7DHC8QWZV"));
  } else {
    await Firebase.initializeApp();
  }
}
