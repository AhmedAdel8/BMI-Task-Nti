import 'package:flutter/material.dart';

class BorderTextfield {
  InputBorder border({required double raduis, required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(raduis),
      borderSide: BorderSide(color: color),
    );
  }
}
