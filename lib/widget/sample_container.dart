import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Learn Widget Container',
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 10,
            color: Colors.greenAccent,
          ),
        ),
        child: const Text(
          'my name is muhammad rizki amin. you can call me amin or rizki, its up to you.  I like play badminton and watching movie',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.purple,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
