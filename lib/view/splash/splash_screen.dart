import 'dart:async';

import 'package:bmi_calculator/view/home/home_screen.dart';
import 'package:bmi_calculator/view/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({super.key});

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 24, 24),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'BMI Calculator',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: kwhite,
                        fontSize: 26,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              left: 220,
              bottom: 650,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 4, 4, 4).withOpacity(0.9),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(5, 5), // Offset
                    ),
                  ],
                  shape: BoxShape.circle, // Shape as circle
                ),
                child: Container(
                  width: 230,
                  height: 230,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green.withOpacity(0.9),
                  ),
                ),
              )),
          Positioned(
            top: 40,
            left: -20,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(3, 3), // Offset
                  ),
                ],
                shape: BoxShape.circle, // Shape as circle
              ),
              child: Container(
                width: 110,
                height: 110,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 44, 44, 44),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 115,
            child: Center(
              child: Text(
                'Developed by Aswin Lal',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: kf2white,
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
