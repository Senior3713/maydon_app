import 'package:flutter/material.dart';
import 'package:maydon_app/presentation/companets/companets.dart';
import 'package:maydon_app/presentation/pages/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final passwordController = TextEditingController();
    final emailController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Welcome to the Sign In Page!',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const SizedBox(height: 20),
            TextFieldComp(controller: emailController, labelText: "Email"),
            const SizedBox(height: 10),
            TextFieldComp(
                controller: passwordController, labelText: "Password"),
            const SizedBox(height: 20),
            EBComp(
                pageName: "Sign In",
                bottumFunc: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                }),
            const SizedBox(height: 40),
            const RichTextComp(
                title: "don't Have Account ",
                pageName: " Sign Up",
                screen: SignUpScreen()),
          ],
        ),
      ),
    );
  }
}
