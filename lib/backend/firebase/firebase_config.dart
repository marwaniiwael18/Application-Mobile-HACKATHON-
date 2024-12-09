import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCBQQrQoksZ_pckcnes0tmuEZsAyvv1P1o",
            authDomain: "hackathon-jyr5no.firebaseapp.com",
            projectId: "hackathon-jyr5no",
            storageBucket: "hackathon-jyr5no.firebasestorage.app",
            messagingSenderId: "418761797755",
            appId: "1:418761797755:web:765becd5a3bd7dfeb7f2de"));
  } else {
    await Firebase.initializeApp();
  }
}
