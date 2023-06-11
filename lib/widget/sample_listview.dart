import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  SampleListView({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade400,
          title: const Text(
            'Learn ListView',
          ),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.green[colorCodes[index]],
            );
          },
          itemCount: colorCodes.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
        )
        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Container(
        //       width: 50,
        //       color: Colors.purple[900],
        //     ),
        //     Container(
        //       width: 50,
        //       color: Colors.purple[800],
        //     ),
        //     Container(
        //       width: 50,
        //       color: Colors.purple[700],
        //     ),
        //     Container(
        //       width: 50,
        //       color: Colors.purple[600],
        //     ),
        //     Container(
        //       width: 50,
        //       color: Colors.purple[500],
        //     ),
        //     Container(
        //       width: 50,
        //       color: Colors.purple[400],
        //     ),
        //   ],
        // ),
        );
  }
}
