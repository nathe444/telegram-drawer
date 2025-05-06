import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestions("What are the main building blocks of Flutter UIs?",
      ["Widgets", "Components", "Layouts", "Blocks"]),
  QuizQuestions("How are Flutter UIs built?", [
    "By combining widgets in code",
    "By combining widgets in a visual editor",
    "By defining widgets in configuration files"
  ]),
  QuizQuestions("What's the purpose of a StatefulWidget?", [
    "To update the UI when data changes",
    "To interact with the user (e.g., text input)",
    "To define the appearance of the UI"
  ]),
  QuizQuestions("Which language is used to build Flutter apps?",
      ["Dart", "Java", "Swift", "Kotlin"]),
  QuizQuestions("What is the function of the 'build' method in a Flutter widget?",
      ["To define the UI structure", "To handle user input", "To manage state"]),
  QuizQuestions("What widget is used to create a scrollable list in Flutter?",
      ["ListView", "Column", "Stack", "GridView"]),
  QuizQuestions("Which widget is commonly used to manage the state of child widgets?",
      ["StatefulWidget", "StatelessWidget", "Container", "Scaffold"]),
  QuizQuestions("What is the purpose of the 'pubspec.yaml' file in a Flutter project?", [
    "To define dependencies and metadata",
    "To store UI layout configurations",
    "To handle routing in the app"
  ]),
  QuizQuestions("What widget is used to display a pop-up message in Flutter?",
      ["Snackbar", "Dialog", "Toast", "Popup"]),
  QuizQuestions("Which command is used to run a Flutter app on an emulator or device?",
      ["flutter run", "flutter start", "flutter execute", "flutter build"]),
];
