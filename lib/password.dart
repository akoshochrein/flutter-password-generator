import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  final String password;

  const Password(this.password, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectableText(
        password,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
