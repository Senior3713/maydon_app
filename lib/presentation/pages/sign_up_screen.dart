import 'package:flutter/material.dart';
import 'package:maydon_app/presentation/companets/companets.dart';
import 'package:maydon_app/presentation/pages/sign_in_screen.dart';
import 'package:maydon_app/presentation/pages/sign_up_two.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                'Welcome to the Sign Up Page!',
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
              pageName: "Sign Up",
              bottumFunc: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpTwoScreen()));
              },
            ),
            const SizedBox(height: 40),
            const RichTextComp(
                title: "title", pageName: " Sign In", screen: SignInScreen()),
          ],
        ),
      ),
    );
  }
}
