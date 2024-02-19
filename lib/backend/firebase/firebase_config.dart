import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCcNXQdFS4kWtgLR8w_QoKLqhd37uJb2e4",
            authDomain: "khetiharii.firebaseapp.com",
            projectId: "khetiharii",
            storageBucket: "khetiharii.appspot.com",
            messagingSenderId: "745837720735",
            appId: "1:745837720735:web:ed223e046e19a298735eaa",
            measurementId: "G-9E4Z2P36LR"));
  } else {
    await Firebase.initializeApp();
  }
}
