import 'package:bmi_cal/constants/colors.dart';
import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  const LeftShape({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 20,
          decoration: BoxDecoration(
            color: greenBackground,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Positive index',
          style: TextStyle(color: Colors.green),
        )
      ],
    );
  }
}
