import 'package:bmi_cal/widgets/shapes_left.dart';
import 'package:bmi_cal/widgets/shapes_right.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  double reslutBMI = 0;
  String reslutText = 'Status';
  double withGood = 150;
  double withBad = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('what is your BMI?'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 130,
                  child: TextField(
                    controller: weightController,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Weight',
                      hintStyle: TextStyle(
                        color: Colors.blueAccent.withOpacity(0.5),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: 130,
                  child: TextField(
                    controller: heightController,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'height',
                      hintStyle: TextStyle(
                        color: Colors.blueAccent.withOpacity(0.5),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                final weight = double.parse(weightController.text);
                final height = double.parse(heightController.text);

                setState(() {
                  reslutBMI = weight / (height * height);
                  if (reslutBMI > 25) {
                    reslutText = 'You are overweight';
                    withBad = 180;
                    withGood = 70;
                  } else if (reslutBMI <= 25 && reslutBMI >= 18.5) {
                    reslutText = 'You are Normal';
                    withBad = 70;
                    withGood = 180;
                  } else {
                    reslutText = 'You are slim';
                    withBad = 100;
                    withGood = 100;
                  }
                });
              },
              child: const Text(
                'Calculate BMA',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              reslutBMI.toStringAsFixed(2),
              style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
            ),
            Text(
              reslutText,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 20),
             LeftShape(width: withGood),
            const SizedBox(height: 15),
             RightShape(width: withBad),
          ],
        ),
      ),
    );
  }
}
