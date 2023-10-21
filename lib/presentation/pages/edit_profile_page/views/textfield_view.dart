import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? prefix;
  final void Function(String text)? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.prefix,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: const TextStyle(fontSize: 17),
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFA6A6A6),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        prefixText: prefix,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 17,
        ),
        filled: true,
        fillColor: const Color(0xFFF2F2F2),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFC4C4C4),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
