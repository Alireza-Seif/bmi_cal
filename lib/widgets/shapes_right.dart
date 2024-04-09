import 'package:bmi_cal/constants/colors.dart';
import 'package:flutter/material.dart';

class ShapesRight extends StatelessWidget {
  ShapesRight({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: width,
          height: 20,
          decoration:  BoxDecoration(
            color: redBackground,
            borderRadius: const BorderRadius.only(
              topLeft:  Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
