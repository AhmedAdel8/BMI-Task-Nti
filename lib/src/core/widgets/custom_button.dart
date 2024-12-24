import 'package:bmi_task_nti/src/core/styles/size_app.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: onPressed,
      height: 50,
      color: Colors.purple[800],
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "myfont",
          fontSize: SizeApp.s20,
          color: Colors.white,
        ),
      ),
    );
  }
}
