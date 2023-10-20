import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(decoration: const BoxDecoration (
                image: DecorationImage(
                    image: AssetImage("assets/images/app/app_name.png"),
                    fit: BoxFit.cover)), height: 100, width: 100,),
            Text("MAYDON", style: Theme
                .of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: Colors.green, fontWeight: FontWeight.bold),),
          ],
        ),),
    );
  }
}
