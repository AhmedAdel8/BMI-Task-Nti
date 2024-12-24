import 'package:bmi_task_nti/src/Features/home/view/widgets/appbar_home.dart';
import 'package:bmi_task_nti/src/Features/home/view/widgets/custom_textfield.dart';
import 'package:bmi_task_nti/src/core/styles/list_model.dart';
import 'package:bmi_task_nti/src/core/styles/size_app.dart';
import 'package:bmi_task_nti/src/core/styles/textfield_controller.dart';
import 'package:bmi_task_nti/src/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static GlobalKey<FormState> formState = GlobalKey<FormState>();
  String? result = '';
  @override
  void initState() {
    TextfieldController.length.addListener(() {
      setState(() {});
    });
    TextfieldController.weight.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    TextfieldController.length.dispose();
    TextfieldController.weight.dispose();
    super.dispose();
  }

  void calculateBmi() {
    String status;
    double? weight = double.parse(TextfieldController.weight.text);
    double? length = double.parse(TextfieldController.length.text);
    double lengthMeters = length / 100;
    double bmi = weight / (lengthMeters * lengthMeters);

    if (bmi < 18.5) {
      status = 'Underweight (نحيف)';
    } else if (bmi >= 18.5 && bmi < 25) {
      status = 'Normal (طبيعي)';
    } else if (bmi >= 25 && bmi < 30) {
      status = 'Overweight (وزن زائد)';
    } else {
      status = 'Obese (سمين)';
    }
    setState(() {
      result = 'Your BMI is: ${bmi.toStringAsFixed(2)}\nStatus: $status';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Form(
              key: formState,
              child: SizedBox(
                height: 150,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 15,
                    );
                  },
                  itemCount: ListModel.mass.length,
                  itemBuilder: (context, index) {
                    return CustomTextfield(
                        textfieldModel: ListModel.mass[index]);
                  },
                ),
              ),
            ),
            CustomButton(
              text: "Calculate",
              onPressed: () {
                if (formState.currentState!.validate()) {
                  calculateBmi();
                } else {
                  print('not valid');
                }
              },
            ),
            Text(
              result!,
              style: TextStyle(fontSize: SizeApp.s22),
            ),
          ],
        ),
      ),
    );
  }
}
