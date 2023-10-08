import 'package:flutter/material.dart';
import 'package:maydon_app/pages/home_page.dart';

class MaydonApp extends StatelessWidget {
  const MaydonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
    );
  }
}
