import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  final VoidCallback generateNewPassword;

  const NewButton(this.generateNewPassword, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: generateNewPassword,
      child: const Text("New password"),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
      ),
    );
  }
}
