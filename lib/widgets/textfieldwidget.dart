// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:redsocial_u2/preferences/preferences.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      this.keyboardType,
      this.prefixIcon,
/*       this.initialValue,
      this.onChanged, */
      this.hintText,
      this.controller,
      this.label = ''});
  final TextInputType? keyboardType;
  final String label;
  final Widget? prefixIcon;
  final TextEditingController? controller;
/*   final String? initialValue;
  final Function(String)? onChanged; */
  final String? hintText;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
/*       initialValue: initialValue, */
/*       onChanged: onChanged, */
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
          label: Text(widget.label),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: widget.hintText,
          filled: true,
          fillColor:
              (Preferences.theme == true) ? Colors.black12 : Colors.white,
          prefixIcon: widget.prefixIcon,
          contentPadding: EdgeInsets.all(12)),
    );
  }
}
