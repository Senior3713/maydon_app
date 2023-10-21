import 'package:flutter/material.dart';

class UpdateButton extends StatelessWidget {
  final void Function() onPressed;
  const UpdateButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 55,
      minWidth: MediaQuery.sizeOf(context).width * .84,
      color: const Color(0xFF1AB65C),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(26),
        ),
      ),
      child: const Text(
        "Update",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17,
          color: Colors.white,
        ),
      ),
    );
  }
}
