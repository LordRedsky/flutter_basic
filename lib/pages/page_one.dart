import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/pages/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return const PageTwo(
            //         text: 'Welcome Red!',
            //       );
            //     },
            //   ),
            // );
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Go to Page 2'),
        ),
      ),
    );
  }
}
