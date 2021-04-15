import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finances/shared/globals.dart';

class TextFieldWidget extends StatelessWidget {

  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final Function onChanged;

  TextFieldWidget({
    this.hintText,
    this.prefixIconData,
    this.suffixIconData,
    this.obscureText,
    this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText ,
      style: TextStyle(
        color: Colors.blueGrey[900],
        fontSize: 14
      ),
      cursorColor: Global.mediumBlue,
      decoration: InputDecoration(
          labelText: hintText,
          prefixIcon: Icon(
            prefixIconData,
            size: 18,
            color: Global.mediumBlue,
          ),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Global.mediumBlue),
        ),
        suffixIcon: Icon(
          suffixIconData,
          size: 18,
          color: Global.mediumBlue,
        ),
        labelStyle: TextStyle(color: Global.mediumBlue),
        focusColor: Global.mediumBlue
      ),
    );
  }
}
