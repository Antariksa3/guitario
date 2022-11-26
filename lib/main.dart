import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guitario/screens/Intro/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await initIntroduction();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: Color(0xFF191e25),
          scaffoldBackgroundColor: Color(0xFF191e25)),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
