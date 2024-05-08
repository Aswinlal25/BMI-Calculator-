import 'package:bmi_calculator/view/utils/colors.dart';
import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({
    super.key,
    required this.selectedDate,
  });

  final DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Your Age',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: kwhite,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            selectedDate != null
                ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                : 'Tap to select date',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color:
                  selectedDate != null ? Colors.green : kwhite.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
