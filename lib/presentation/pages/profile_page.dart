import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leadingWidth: 46,
        leading: SizedBox(
          height: 40,
          child: Text("M"),
        ),
      ),
      body: const Center(
        child: Text("Hello Tashkent")
      ),
    );
  }
}
