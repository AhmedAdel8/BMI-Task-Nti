import 'package:bmi_task_nti/src/core/styles/textfield_controller.dart';
import 'package:bmi_task_nti/src/models/textfield_model.dart';
import 'package:flutter/material.dart';

class ListModel {
  static List<TextfieldModel> mass = [
    TextfieldModel(
      validator: (val) {
        if (val!.isEmpty) {
          return "Value must be entered";
        }
        if (val.length > 4) {
          return 'Value must be less than 4';
        }
        if (val.length <= 1) {
          return 'Value must be greater than 1';
        } else {
          return null;
        }
      },
      controller: TextfieldController.length,
      hintText: "Enter your length",
      icon: Icon(Icons.height_outlined),
      label: 'Length',
    ),
    TextfieldModel(
      validator: (val) {
        if (val!.isEmpty) {
          return "Value must be entered";
        }
        if (val.length > 4) {
          return 'Value must be less than 4';
        }
        if (val.length <= 1) {
          return 'Value must be greater than 1';
        } else {
          return null;
        }
      },
      controller: TextfieldController.weight,
      hintText: "Enter your weight",
      icon: Icon(Icons.line_weight),
      label: 'weight',
    )
  ];
}
