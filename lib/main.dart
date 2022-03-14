import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Homepage',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFFF3F5F7),
            colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: const Color(0xFF3EBACE),
                secondary: const Color(0xFFD8ECf1))),
        home: HomeScreen());
  }
}
