import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class input_Field extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  input_Field({super.key, required this.hint, required this.controller});

  @override
  State<input_Field> createState() => _input_FieldState();
}

class _input_FieldState extends State<input_Field> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          fillColor: Colors.grey,
          filled: true,
          hintText: widget.hint),
    );
  }
}
