import 'package:flutter/material.dart';

class SampleFlexible extends StatelessWidget {
  const SampleFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text(
          'Learn Flexible And Expanded',
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: _sampleBox(),
          ),
          Expanded(
            child: _sampleBox(),
          ),
          _sampleBox(),
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


// Row(
//         children: [
//           Flexible(
//             flex: 3,
//             fit: FlexFit.tight,
//             child: _sampleBox(),
//           ),
//           Flexible(
//             flex: 1,
//             fit: FlexFit.tight,
//             child: _sampleBox(),
//           ),
//           Flexible(
//             flex: 1,
//             fit: FlexFit.tight,
//             child: _sampleBox(),
//           ),
//         ],