import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String? hintText;
  final validator;

  const RoundedTextFormField({
    Key? key,
    this.controller,
    this.obscureText = false,
    required this.hintText,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText!,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText!,
        hintStyle: const TextStyle(color: Colors.grey),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
      validator: validator,
    );
  }
}
