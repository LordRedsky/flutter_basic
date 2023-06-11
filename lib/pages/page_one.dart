import 'package:flutter/material.dart';
// import 'package:flutter_widget_ui/pages/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  var selected = 'satu';
  final dropdownList = <String>[
    'satu',
    'dua',
    'tiga',
    'empat',
    'lima',
  ];
  var isChecked = false;
  var sex = 'male';
  var isOn = false;
  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One & Form'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              key: _globalKey,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'isi ini dulu ya';
                  }
                  return null;
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _globalKey.currentState!.validate();
            },
            child: const Text('validate'),
          ),
          Switch(
            value: isOn,
            onChanged: (bool? val) {
              if (val != null) {
                setState(() {
                  isOn = val;
                });
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 'male',
                groupValue: sex,
                onChanged: (String? val) {
                  setState(
                    () {
                      if (val != null) {
                        sex = val;
                      }
                    },
                  );
                },
              ),
              const Text('Male')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 'female',
                groupValue: sex,
                onChanged: (String? val) {
                  setState(
                    () {
                      if (val != null) {
                        sex = val;
                      }
                    },
                  );
                },
              ),
              const Text('Female')
            ],
          ),
          Checkbox(
            value: isChecked,
            activeColor: Colors.deepOrange,
            onChanged: (val) {
              setState(
                () {
                  if (val != null) {
                    isChecked = val;
                  }
                },
              );
            },
          ),
          DropdownButton(
            value: selected,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 40,
            style: TextStyle(
              color: Colors.blue[600],
            ),
            underline: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.redAccent,
                    width: 3,
                  ),
                ),
              ),
            ),
            items: dropdownList
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (String? val) {
              setState(() {
                if (val != null) {
                  selected = val;
                }
              });
            },
          )
        ],
      ),
    );
  }
}

// Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigator.push(
//             //   context,
//             //   MaterialPageRoute(
//             //     builder: (context) {
//             //       return const PageTwo(
//             //         text: 'Welcome Red!',
//             //       );
//             //     },
//             //   ),
//             // );
//             Navigator.pushNamed(context, '/second');
//           },
//           child: const Text('Go to Page 2'),
//         ),
//       ),
