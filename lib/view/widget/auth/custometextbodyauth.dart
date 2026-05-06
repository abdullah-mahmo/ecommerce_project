import 'package:flutter/material.dart';

class CustomeTextBodyAuth extends StatelessWidget {
  final  String body;
  const CustomeTextBodyAuth({super.key,  required this.body});
 @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
