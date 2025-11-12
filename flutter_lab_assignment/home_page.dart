import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: Colors.brown,
        foregroundColor: const Color.fromARGB(255, 106, 173, 236),
        title: Text("Fun Project", style: GoogleFonts.carterOne()),
        actions: [
          IconButton(
            onPressed: () => showSnack(context, "Search tapped"),
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => showSnack(context, "Profile tapped"),
            icon: Icon(Icons.person),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => showSnack(context, "FAB tapped"),
        tooltip: "Add",
        elevation: 50,
        child: Icon(Icons.add),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HomePage"),
              onTap: () => showSnack(context, "Home tapped"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("ProfilePage"),
              onTap: () => showSnack(context, "Profile tapped"),
            ),
            Spacer(),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => showSnack(context, "Settings tapped"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
              onTap: () => showSnack(context, "About Us tapped"),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("© 2025 MashTech", style: TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.brown, Colors.brown.shade200],
            ),
            border: Border.all(color: Colors.red, width: 5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text(
                "Welcome to homepage",
                style: GoogleFonts.fanwoodText(fontSize: 40),
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/flutter.png', height: 100),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => showSnack(context, "Elevated tapped"),
                    icon: Icon(Icons.thumb_up),
                    label: Text("Elevated"),
                  ),
                  TextButton.icon(
                    onPressed: () => showSnack(context, "Text tapped"),
                    icon: Icon(Icons.text_fields),
                    label: Text("Texted"),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => showSnack(context, "Outlined tapped"),
                    icon: Icon(Icons.border_all),
                    label: Text("Outlined"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Mahim"),
                  subtitle: Text("Backend Architect"),
                ),
              ),
              Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Fahim"),
                  subtitle: Text("Frontend"),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
