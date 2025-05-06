import 'package:flutter/material.dart';

class Popupbtn extends StatelessWidget {
  const Popupbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.add),
      offset: const Offset(100, 50),
      onSelected: (String value) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(value),
          backgroundColor: Colors.green,
        ));
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Edit',
          child: Text(
            'Edit',
            style: TextStyle(
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const PopupMenuItem<String>(
          value: 'Delete',
          child: Text('Delete'),
        ),
      ],
    );
  }
}
