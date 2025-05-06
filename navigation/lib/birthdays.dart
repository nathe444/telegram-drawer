import "package:flutter/material.dart";

class BirthDays extends StatelessWidget {
  const BirthDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Birthdays")),
      body: const Center(
          child: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          Text("This is the Birthdays page"),
          SizedBox(
            height: 40.0,
          ),
          Icon(
            Icons.cake,
            size: 40.0,
          )
        ],
      )),
    );
  }
}
