import 'package:bmi_task_nti/src/core/styles/size_app.dart';
import 'package:bmi_task_nti/src/core/styles/string_app.dart';
import 'package:flutter/material.dart';

AppBar appBarHome() {
  return AppBar(
    centerTitle: true,
    title: Text(
      StringApp.appbarTitle,
      style: TextStyle(fontSize: SizeApp.s24),
    ),
  );
}
