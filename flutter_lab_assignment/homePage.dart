import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_project/ProfilePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showSnack(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fun Project", style: GoogleFonts.carterOne()),
        actions: [
          IconButton(
            onPressed: () => showSnack(context, "Search tapped"),
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => showSnack(context, "Profile tapped"),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showSnack(context, "FAB tapped"),
        tooltip: "Add",
        elevation: 50,
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("HomePage"),
              onTap: () => showSnack(context, "Home tapped"),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfilePage();
                    },
                  ),
                );
              },
            ),
            const Divider(),
            const Spacer(),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () => showSnack(context, "Settings tapped"),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About Us"),
              onTap: () => showDialog(
                context: context,
                builder: (context) => AboutDialog.adaptive(
                  applicationName: "Open License.",
                  applicationVersion: "1.0.0",
                  applicationIcon: const Icon(Icons.info),
                  children: const [Text("")],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text("© 2025 MashTech", style: TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text(
                "Welcome to homepage",
                style: GoogleFonts.fanwoodText(fontSize: 40),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/logo.png', height: 100),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => showSnack(context, "Elevated tapped"),
                    icon: const Icon(Icons.thumb_up),
                    label: const Text("Elevated"),
                  ),
                  TextButton.icon(
                    onPressed: () => showSnack(context, "Text tapped"),
                    icon: const Icon(Icons.text_fields),
                    label: const Text("Texted"),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => showSnack(context, "Outlined tapped"),
                    icon: const Icon(Icons.border_all),
                    label: const Text("Outlined"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Mahim"),
                  subtitle: Text("Backend Architect"),
                ),
              ),
              const Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Fahim"),
                  subtitle: Text("Frontend"),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
