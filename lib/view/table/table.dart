// ignore_for_file: library_private_types_in_public_api

import 'package:bmi_calculator/view/utils/colors.dart';
import 'package:flutter/material.dart';

class BMICategoryTable extends StatefulWidget {
  const BMICategoryTable({super.key});

  @override
  _BMICategoryTableState createState() => _BMICategoryTableState();
}

class _BMICategoryTableState extends State<BMICategoryTable> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bcolor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'BMI Categories',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
            fontSize: 16,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: bcolor,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'According to the World Health Organization (WHO), body mass index (BMI) classifies people as underweight, healthy weight, overweight, or obese based on their BMI:',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 14,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 44, 44, 44),
                ),
                child: DataTable(
                  columns: const [
                    DataColumn(
                        label: Text('BMI Range',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Description',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(
                        Text(
                          'Under 18.5',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      DataCell(
                        Text(
                          ' underweight',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '18.5 - 24.9',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      DataCell(
                        Text(
                          "healthy range",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '25 - 29.9',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      DataCell(
                        Text(
                          'overweight.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '30 - 39.9',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      DataCell(
                        Text(
                          'obesity.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text(
                          '40 or over',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      DataCell(
                        Text(
                          'severe obesity.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
