import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: const Text("Home Page")),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: Column(
          children: [
            const DrawerHeader(child: Icon(Icons.home)),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Setting Page"),
              onTap: () {
                Navigator.pushNamed(context, '/SettingPage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile Page"),
              onTap: () {
                Navigator.pushNamed(context, '/ProfilePage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text("Delete Page"),
              onTap: () {
                Navigator.pushNamed(context, '/DeletePage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home Page"),
              onTap: () {
                Navigator.pushNamed(context, '/HomePage');
              },
            )
          ],
        ),
      ),
    );
  }
}
