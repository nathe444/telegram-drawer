import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: PopupMenuButtonWidget(),
      ),
    );
  }
}

class PopupMenuButtonWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const PopupMenuButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<Todo>(
          icon: const Icon(Icons.view_list),
          onSelected: ((valueSelected) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('valueSelected: ${valueSelected.title}')));
          }),
          itemBuilder: (BuildContext context) {
            return menuList.map((Todo todo) {
              return PopupMenuItem<Todo>(
                value: todo,
                child: Row(
                  children: <Widget>[
                    Icon(todo.icon.icon),
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Text(todo.title),
                  ],
                ),
              );
            }).toList();
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}

class Todo {
  final String title;
  final Icon icon;
  Todo({required this.title, required this.icon});
}

List<Todo> menuList = [
  Todo(title: 'Fast Food', icon: const Icon(Icons.fastfood)),
  Todo(title: 'Reminder', icon: const Icon(Icons.add_alarm)),
  Todo(title: 'Flight', icon: const Icon(Icons.flight)),
  Todo(title: 'Music', icon: const Icon(Icons.audiotrack))
];
