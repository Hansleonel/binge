import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal.shade300),
            borderRadius: BorderRadius.circular(24.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal.shade300),
            borderRadius: BorderRadius.circular(24.0)),
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null);
  }
}
