import 'package:flutter/material.dart';

class SampleSizedBox extends StatelessWidget {
  const SampleSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text(
          'Learn SizedBox',
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: _sampleBox(),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Oke'),
              ),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget _sampleBox() {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(),
      color: Colors.amber,
    ),
  );
}
