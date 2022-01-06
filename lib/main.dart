import 'package:flutter/material.dart';
import 'package:flutter_assignment/new_button.dart';

import './utils.dart';
import './password.dart';
import './new_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _currentPassword = "start";

  _generatePassword() {
    setState(() {
      _currentPassword = generatePassword();
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Generator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Password Generator'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const Spacer(),
            Password(_currentPassword),
            const Divider(
              height: 48,
              indent: 48,
              endIndent: 48,
              thickness: 2,
            ),
            NewButton(_generatePassword),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
