import 'package:flutter/material.dart';

class CustomSlider2 extends StatefulWidget {
  final int min;
  final int max;
  final int initialValue;
  final ValueChanged<int> onChanged;
  final String title;
  final String valuetag;

  CustomSlider2({
    required this.min,
    required this.max,
    required this.initialValue,
    required this.onChanged,
    required this.title,
    required this.valuetag,
  });

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider2> {
  late int _sliderValue;
  bool isSwitchOn = false;
  bool isEdited = false;

  @override
  void initState() {
    _sliderValue = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          // color: Color.fromARGB(133, 51, 51, 51),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      letterSpacing: 0.6,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                Text(
                  '${_sliderValue} ${widget.valuetag}.',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Slider(
              activeColor: Colors.green,
              inactiveColor: const Color.fromARGB(255, 65, 65, 65),
              value: _sliderValue.toDouble(),
              onChanged: (double value) {
                setState(() {
                  isEdited = true;
                  _sliderValue = value.round();
                  widget.onChanged(_sliderValue);
                });
              },
              min: widget.min.toDouble(),
              max: widget.max.toDouble(),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
