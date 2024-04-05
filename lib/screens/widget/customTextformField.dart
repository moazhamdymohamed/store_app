// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {super.key, required this.hintext, this.onChange, this.InputType});
  String hintext;
  TextInputType? InputType;
  Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: InputType,
      onChanged: onChange,
      decoration: InputDecoration(
        focusColor: Colors.white,
        hintText: hintext,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(16),
        ),
        border: const OutlineInputBorder(borderSide: BorderSide()),
      ),
    );
  }
}
