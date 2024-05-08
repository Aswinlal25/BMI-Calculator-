// ignore_for_file: deprecated_member_use, constant_identifier_names

import 'package:bmi_calculator/view/utils/colors.dart';
import 'package:flutter/material.dart';

class BmiResultDialog extends StatefulWidget {
  final double? bmiResult;
  const BmiResultDialog({super.key, required this.bmiResult});
  static const IconData heart_broken_sharp =
      IconData(0xf0421, fontFamily: 'MaterialIcons');

  @override
  State<BmiResultDialog> createState() => _LogoutDialogState();
}

class _LogoutDialogState extends State<BmiResultDialog> {
  String resultText = '';

  @override
  void initState() {
    resultText = getBmiCategory(widget.bmiResult!);
    super.initState();
  }

  String getBmiCategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight ,Characterized by a BMI below the healthy range, potentially indicating insufficient body fat and muscle mass.';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Healthy Range ,Optimal BMI associated with the lowest risk of chronic diseases and a healthy balance of body fat and muscle mass.';
    } else if (bmi >= 25 && bmi <= 29.9) {
      return 'Overweight, Excess body weight relative to height, increasing the risk of conditions like hypertension and type 2 diabetes.';
    } else if (bmi >= 30 && bmi <= 39.9) {
      return 'Obesity, Significant accumulation of body fat leading to heightened risk of cardiovascular disease, certain cancers, and other serious health issues';
    } else {
      return 'Severe Obesity, Most severe category associated with significantly increased risks of heart disease, stroke, respiratory problems, and reduced quality of life.';
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> resultParts = resultText.split(',');
    String firstSentence = resultParts[0].trim();
    String secondSentence = resultParts.length > 1 ? resultParts[1].trim() : '';

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: const Color.fromARGB(255, 13, 13, 13),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      'Your BMI Result',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: kwhite,
                        fontFamily: 'Montserrat',
                        letterSpacing: 0.4,
                        wordSpacing: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.bmiResult!.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.w500,
                        color: kwhite,
                        fontFamily: 'Montserrat',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      firstSentence,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color:
                            firstSentence == 'Healthy Range' ? kgreen : kwhite,
                        fontFamily: 'Montserrat',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (secondSentence.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Text(
                          secondSentence,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: kwhite.withOpacity(0.7),
                            fontFamily: 'Montserrat',
                            letterSpacing: 0.4,
                            wordSpacing: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 45,
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kgreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          'Ok',
                          style: TextStyle(color: kblack, fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
