

import 'package:flutter/material.dart';

class CustomeTexttitleAuth extends StatelessWidget {
  final String title;
  const CustomeTexttitleAuth({super.key , required this.title});

  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headlineLarge);
  }
}
