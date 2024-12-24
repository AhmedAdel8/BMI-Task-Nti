import 'package:bmi_task_nti/src/core/styles/border_textfield.dart';
import 'package:bmi_task_nti/src/models/textfield_model.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.textfieldModel});

  final TextfieldModel textfieldModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          validator: textfieldModel.validator,
          keyboardType: TextInputType.number,
          controller: textfieldModel.controller,
          decoration: InputDecoration(
            label: Text(textfieldModel.label),
            hintText: textfieldModel.hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            prefix: textfieldModel.icon,
            border: BorderTextfield().border(raduis: 10, color: Colors.black),
            focusedBorder:
                BorderTextfield().border(raduis: 10, color: Colors.black),
            disabledBorder:
                BorderTextfield().border(raduis: 10, color: Colors.purple),
            fillColor: Color(0xffe4d4f8),
            filled: true,
          ),
        ),
      ],
    );
  }
}
