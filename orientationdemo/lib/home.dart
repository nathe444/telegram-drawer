import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(children: [CustomOrient()]),
        ),
      ),
    );
  }
}

class CustomOrient extends StatelessWidget {
  const CustomOrient({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation orient = MediaQuery.of(context).orientation;

    if (orient == Orientation.portrait) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Portrait Mode",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Container(
            height: 100,
            color: Colors.blue,
            child:
                const Center(child: Text("Box 1", style: TextStyle(color: Colors.white))),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            color: Colors.green,
            child:
                const Center(child: Text("Box 2", style: TextStyle(color: Colors.white))),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Expanded(
            child: Container(
              height: 200,
              color: Colors.orange,
              child: const Center(
                  child: Text("Box A", style: TextStyle(color: Colors.white))),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 200,
              color: Colors.purple,
              child: const Center(
                  child: Text("Box B", style: TextStyle(color: Colors.white))),
            ),
          ),
        ],
      );
    }
  }
}
