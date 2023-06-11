import 'package:flutter/material.dart';

class SampleColumnRow extends StatelessWidget {
  const SampleColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Learn Widget Container',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  color: Colors.red.shade200,
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 50,
                  color: Colors.yellow.shade400,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            color: Colors.red.shade200,
          ),
          Container(
            height: 50,
            color: Colors.yellow.shade300,
          ),
          Container(
            height: 50,
            color: Colors.blue.shade300,
          ),
        ],
      ),
    );
  }
}
