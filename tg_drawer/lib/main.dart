import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<Map<String, dynamic>> drawerItems = [
  {"title": "My Profile", "icon": Icons.person_outline},
  {"title": "New Group", "icon": Icons.group_add_outlined},
  {"title": "New Channel", "icon": Icons.campaign_outlined},
  {"title": "Contacts", "icon": Icons.contacts_outlined},
  {"title": "Chat Folders", "icon": Icons.folder_outlined},
  {"title": "Saved Messages", "icon": Icons.bookmark_outline},
  {"title": "Calls", "icon": Icons.call_outlined},
  {"title": "Settings", "icon": Icons.settings_outlined},
  {"title": "Plus Settings", "icon": Icons.add_circle_outline},
  {"title": "Categories", "icon": Icons.category_outlined},
];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void changeTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram UI',
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: const Home(),
    );
  }
}

// Main Screen
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const TelegramDrawer(),
      body: const Center(
        child: Text('Telegram Drawer Example'),
      ),
    );
  }
}

class TelegramDrawer extends StatelessWidget {
  const TelegramDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final myAppState = context.findAncestorStateOfType<_MyAppState>()!;
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.background,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // User info with avatar
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/124388202?s=400&u=7a05a23a18f7957a15b6c8e1e3054d6205f1513a&v=4'),
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Natnael Mulugeta',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text('@nathe505'),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          myAppState.isDarkMode
                              ? Icons.light_mode_outlined
                              : Icons.dark_mode_outlined,
                        ),
                        onPressed: myAppState.changeTheme,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person_add_outlined),
              title: const Text('Add Account'),
              onTap: () {},
            ),
            const Divider(height: 1),
            ...drawerItems.map((item) {
              return ListTile(
                leading: Icon(item['icon']),
                title: Text(item['title']),
                onTap: () {},
              );
            }),
          ],
        ),
      ),
    );
  }
}
