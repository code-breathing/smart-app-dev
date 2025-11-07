import 'dart:ui';

import 'package:flutter/material.dart';

void main() {}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D47A1), // Deep blue
        foregroundColor: Colors.white,
        title: const Text(
          "Digital note",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        elevation: 50,
        child: Icon(Icons.add_box),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 12, 65, 106),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                ),
                accountName: Text("Name"),
                accountEmail: Text("Email"),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text("Home Page"),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            const Divider(),

            const Spacer(),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.info_sharp),
              title: Text("About us"),
            ),
          ],
        ),
      ),
    );
  }
}
