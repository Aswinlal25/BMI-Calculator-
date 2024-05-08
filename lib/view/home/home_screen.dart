// ignore_for_file: deprecated_member_use

import 'package:bmi_calculator/view/home/widgets/date_container.dart';
import 'package:bmi_calculator/view/home/widgets/slider.dart';
import 'package:bmi_calculator/view/home/widgets/title_card.dart';
import 'package:bmi_calculator/view/table/table.dart';
import 'package:bmi_calculator/view/tips_screen/tip.dart';
import 'package:bmi_calculator/view/utils/colors.dart';
import 'package:bmi_calculator/view/utils/dialogbox/dialog.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String gender = 'Male';
  double bmi = 0.0;
  double height = 0;
  double weight = 0;
  int agecounter = 18;
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward(); // Start the animation when the screen loads
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the animation controller
    super.dispose();
  }

  Widget buildAnimatedColumn({required Widget child}) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, animatedChild) {
        return Opacity(
          opacity: _animation.value,
          child: animatedChild,
        );
      },
      child: child,
    );
  }

  void calculateBMI() {
    setState(() {
      bmi = weight / (height * height);
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black,
            backgroundColor: Colors.black,
            dialogBackgroundColor: Colors.black,
            colorScheme: ColorScheme.dark(
              primary: const Color.fromARGB(255, 84, 84, 84),
              onPrimary: Colors.green,
              surface: bcolor,
              onSurface: Colors.white,
              onSecondaryContainer: kgreen,
            ),
          ),
          child: ButtonTheme(
            textTheme: ButtonTextTheme.normal,
            buttonColor: Colors.amber,
            child: child!,
          ),
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        agecounter = DateTime.now().difference(selectedDate!).inDays ~/ 365;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: bcolor,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: kwhite,
            fontSize: 16,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            color: kf2white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BMICategoryTable()));
            },
            icon: const Icon(Icons.table_chart_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAnimatedColumn(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const TipScreen()));
                },
                child: TitleCard(),
              ),
            ),
            const SizedBox(height: 20),
            buildAnimatedColumn(
              child: CustomSlider2(
                min: 100,
                max: 200,
                initialValue: 140,
                onChanged: (value) {
                  height = value.toDouble() / 100;
                },
                title: 'Height',
                valuetag: 'cm',
              ),
            ),
            const SizedBox(height: 5),
            buildAnimatedColumn(
              child: CustomSlider2(
                min: 30,
                max: 150,
                initialValue: 40,
                onChanged: (value) {
                  weight = value.toDouble();
                },
                title: 'Weight',
                valuetag: 'kg',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Gender',
              style: TextStyle(
                letterSpacing: 0.6,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            buildAnimatedColumn(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = 'Male';
                      });
                    },
                    child: Container(
                      width: 160,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 19,
                        vertical: 13,
                      ),
                      decoration: BoxDecoration(
                        color: gender == 'Male'
                            ? Colors.green
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.male,
                            color: gender == 'Female' ? kwhite : kblack,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Male',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: gender == 'Female' ? kwhite : kblack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = 'Female';
                      });
                    },
                    child: Container(
                      width: 165,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 19,
                        vertical: 13,
                      ),
                      decoration: BoxDecoration(
                        color: gender == 'Female'
                            ? Colors.green
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.female,
                            color: gender == 'Female' ? kblack : kwhite,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Female',
                            style: TextStyle(
                              color: gender == 'Female' ? kblack : kwhite,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            buildAnimatedColumn(
              child: GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: DateContainer(selectedDate: selectedDate),
              ),
            ),
            const SizedBox(height: 20),
            buildAnimatedColumn(
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    calculateBMI();
                    showDialog(
                      context: context,
                      builder: (_) {
                        return BmiResultDialog(bmiResult: bmi);
                      },
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<ContinuousRectangleBorder>(
                      ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  child: const Text(
                    'Calculate Your BMI',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
