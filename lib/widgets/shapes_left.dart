import 'package:bmi_cal/constants/colors.dart';
import 'package:flutter/material.dart';

class ShapesLeft extends StatelessWidget {
  ShapesLeft({super.key, required this.width});

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
      ],
    );
  }
}
