import 'package:flutter/material.dart';

import 'package:maydon_app/presentation/pages/home_screen.dart';
import 'package:maydon_app/presentation/pages/sign_in_screen.dart';


class MaydonApp extends StatelessWidget {
  const MaydonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  SignInScreen(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
    );
  }
}
