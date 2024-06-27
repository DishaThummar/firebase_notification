import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notificationdemo/firebase_option.dart';
import 'package:notificationdemo/notification_demo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print("Here .. Hello ");
  await notificationFn();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firebase Messaging Example'),
        ),
        body: Center(
          child: Text('Notification'),
        ),
      ),
    );
  }
}
