import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextComp extends StatelessWidget {
  const RichTextComp(
      {super.key,
      required this.title,
      required this.pageName,
      required this.screen});

  final String title;
  final String pageName;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: title, style: const TextStyle(color: Colors.black)),
          TextSpan(
            text: pageName,
            style: const TextStyle(color: Colors.green),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => screen));
              },
          ),
        ],
      ),
    );
  }
}

class EBComp extends StatelessWidget {
  const EBComp({super.key, required this.pageName, required this.bottumFunc});

  final String pageName;
  final VoidCallback bottumFunc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      onPressed: bottumFunc,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 80),
        child: Text(
          pageName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class TextFieldComp extends StatelessWidget {
  const TextFieldComp(
      {super.key, required this.controller, required this.labelText});

  final TextEditingController controller;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: TextField(
        cursorColor: Colors.green,
        controller: controller,
        decoration: InputDecoration(focusColor: Colors.lightGreenAccent,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.green, width: 3.0),
          ),
          labelText: labelText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.green)),
        ),
      ),
    );
  }
}
