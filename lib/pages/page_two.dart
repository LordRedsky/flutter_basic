// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  final String text;
  const PageTwo({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  late DateTime selectedDate;
  late TimeOfDay selectedTime;

  void _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2045),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _selectedTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  void initState() {
    selectedDate = DateTime.now();
    selectedTime = const TimeOfDay(hour: 20, minute: 21);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two & Date Time Picker'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pop(context);
            // _selectedDate(context);
            _selectedTime(context);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // const Text('Select Date'),
              // Text(selectedDate.toIso8601String()),
              const Text('Select TIme'),
              Text('${selectedTime.hour}:${selectedTime.minute}'),
            ],
          ),
        ),
      ),
    );
  }
}
