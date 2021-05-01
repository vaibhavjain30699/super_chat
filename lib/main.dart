import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:super_chat/chat_screen.dart';
import 'package:super_chat/login_screen.dart';
import 'package:super_chat/welcome_screen.dart';

void main() async {

  runApp(MyApp());
  await Firebase.initializeApp();

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Super Chat',
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen' : (context) => WelcomeScreen(),
        'login_screen' : (context) => LoginScreen(),
        'chat_screen' : (context) => ChatScreen(),
      },
    );
  }
}