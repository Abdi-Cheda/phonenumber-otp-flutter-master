import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phone_otp_ui/home.dart';
import 'package:phone_otp_ui/phone.dart';
import 'package:phone_otp_ui/verify.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
      apiKey: 'AIzaSyArsSm3TcSk0Dw7YjcQviTyT2xQyB1A2y4',
      authDomain: 'com.example.phone_otp_ui',
      projectId: 'phone-firebase-1431e',
      storageBucket: 'phone-firebase-1431e.appspot.com',
      messagingSenderId: '562633050301',
      appId: '1:562633050301:android:3b476eb8753ae7146c8fd4',
      ),
  );
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'home': (context) => MyHome()
    },
  ));
}
