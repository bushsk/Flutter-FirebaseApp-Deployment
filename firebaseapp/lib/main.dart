import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseapp/realtime_db.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ensure initialisation
  FirebaseApp firebaseApp = await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyB79lB2j8-cRRL1W3vpfHVeuTdsAQRqRiA",
        authDomain: "first-7c123.firebaseapp.com",
        databaseURL: "https://first-7c123.firebaseio.com",
        projectId: "first-7c123",
        storageBucket: "first-7c123.appspot.com",
        messagingSenderId: "310248865936",
        appId: "1:310248865936:web:5f2200a7f60f0fec235815"),
  );
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MaterialApp(
        useInheritedMediaQuery: true,
        home: realtime_db(),
      ),
    ),
  );
}
