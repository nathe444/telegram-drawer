import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form Validation Demo',
      home: const Home(),
    );
  }
}
