import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/pages/page_one.dart';
import 'package:flutter_widget_ui/pages/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      // home: const PageOne(),
      initialRoute: '/second',
      routes: {
        '/': (context) => const PageOne(),
        '/second': (context) => const PageTwo(
              text: '',
            )
      },
    );
  }
}
