import 'package:flutter/material.dart';
// import 'package:newtourly/screens/splashaScreen/onboarding.dart';
import 'package:newtourly/screens/welcome_screen.dart';
// import 'package:newtourly/screens/welcome_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tourly",
      home: WelcomeScreen(),
    );
  }
}
