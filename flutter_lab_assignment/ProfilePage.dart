import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:practice_project/homePage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Image.asset(
          'assets/images/smith.png',
          height: 400,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
