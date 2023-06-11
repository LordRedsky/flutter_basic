import 'package:flutter/material.dart';

class SampleGrid extends StatelessWidget {
  SampleGrid({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text(
          'Learn Grid',
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(5),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.purple[colorCodes[index]],
              );
            },
            itemCount: colorCodes.length,
          )
          // GridView.count(
          //   scrollDirection: Axis.horizontal,
          // crossAxisCount: 4,
          // mainAxisSpacing: 5,
          // crossAxisSpacing: 5,
          //   children: [
          //     Container(
          //       color: Colors.amber.shade300,
          //     ),
          //     Container(
          //       color: Colors.green.shade300,
          //     ),
          //     Container(
          //       color: Colors.red.shade300,
          //     ),
          //     Container(
          //       color: Colors.blue.shade300,
          //     ),
          //     Container(
          //       color: Colors.deepPurpleAccent,
          //     ),
          //     Container(
          //       color: Colors.red.shade300,
          //     ),
          //     Container(
          //       color: Colors.cyan,
          //     ),
          //     Container(
          //       color: Colors.green.shade300,
          //     ),
          //     Container(
          //       color: Colors.amber.shade300,
          //     ),
          //     Container(
          //       color: Colors.green.shade300,
          //     ),
          //     Container(
          //       color: Colors.red.shade300,
          //     ),
          //     Container(
          //       color: Colors.blue.shade300,
          //     ),
          //     Container(
          //       color: Colors.deepPurpleAccent,
          //     ),
          //     Container(
          //       color: Colors.red.shade300,
          //     ),
          //     Container(
          //       color: Colors.cyan,
          //     ),
          //     Container(
          //       color: Colors.green.shade300,
          //     ),
          //   ],
          // ),
          ),
    );
  }
}
