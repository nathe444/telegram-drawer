import 'package:flutter/material.dart';
import "package:first_app/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
              [Color.fromARGB(255, 11, 33, 14), Color.fromARGB(189, 14, 4, 56)])),
    ),
  );
}
