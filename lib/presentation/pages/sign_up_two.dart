import 'package:flutter/material.dart';
import 'package:maydon_app/presentation/companets/companets.dart';
import 'package:maydon_app/presentation/pages/sign_in_screen.dart';

class SignUpTwoScreen extends StatefulWidget {
  const SignUpTwoScreen({super.key});

  @override
  State<SignUpTwoScreen> createState() => _SignUpTwoScreenState();
}

class _SignUpTwoScreenState extends State<SignUpTwoScreen> {
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
            const CircleAvatar(
              radius: 75,
            ),
            const SizedBox(height: 20),
            TextFieldComp(
              controller: emailController,
              labelText: 'Full Name',
            ),
            const SizedBox(height: 10),
            TextFieldComp(
              controller: emailController,
              labelText: 'Phone Number',
            ),
            const SizedBox(height: 10),
            TextFieldComp(
              controller: passwordController,
              labelText: 'pre Password',
            ),
            const SizedBox(height: 20),
            EBComp(
                pageName: "Sign Up",
                bottumFunc: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  SignUpTwoScreen()));
                }),
            const SizedBox(height: 40),
            const RichTextComp(
              title: 'All ready account ',
              pageName: ' sign in',
              screen: SignInScreen(),
            )
          ],
        ),
      ),
    );
  }
}


