import 'package:flutter/material.dart';

class info extends StatelessWidget {
  info(this.title, this.value);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
    Text(
      value,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    ),
    Text(
      title,
      style: TextStyle(fontSize: 15),
    ),
  ],
    );
  }
}
