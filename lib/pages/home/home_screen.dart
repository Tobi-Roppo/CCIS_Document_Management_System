import 'package:ccis_dms/constants/style.dart';
import 'package:flutter/material.dart';

class CardTaskData {
  final String label;
  final String jobDesk;
  final DateTime dueDate;

  const CardTaskData({
    required this.label,
    required this.jobDesk,
    required this.dueDate,
  });
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomPageGrids(
                  title: 'Task 1',
                  number: 10,
                ),
                HomPageGrids(
                  title: 'Task 2',
                  number: 10,
                ),
                HomPageGrids(
                  title: 'Task 2',
                  number: 10,
                ),
              ],
            ),
            kHeight20,
          ],
        ),
      ),
    );
  }
}

class HomPageGrids extends StatelessWidget {
  HomPageGrids({
    Key? key,
    required this.title,
    required this.number,
    this.color,
  }) : super(key: key);

  final String title;
  final int number;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 250,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 240, 86, 26),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              number.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26),
            )
          ],
        ),
      ),
    );
  }
}
