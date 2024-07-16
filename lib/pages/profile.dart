import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Profile Page"),
      ),
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
