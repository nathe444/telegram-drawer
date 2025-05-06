import 'package:flutter/material.dart';
import "package:navigation/birthdays.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BirthDays()),
          );
        },
        child: const Icon(Icons.cake), // or any icon you prefer
      ),
    );
  }
}
