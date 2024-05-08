import 'package:bmi_calculator/view/utils/colors.dart';
import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kgreen,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.9),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(3, 3), // Offset
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 140,
                  height: 33,
                  decoration: BoxDecoration(
                    color: bcolor.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Easy BMI Tips',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: kwhite,
                        fontSize: 12,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Simple tips for a healthy BMI',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: kblack,
                    fontSize: 17,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'To lower your BMI, focus on simple lifestyle changes. Here are some helpful tips.',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: kblack.withOpacity(0.7),
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: 30,
            child: Container(
              width: 140,
              height: 130,
              decoration: BoxDecoration(
                color: kwhite.withOpacity(0.13),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
